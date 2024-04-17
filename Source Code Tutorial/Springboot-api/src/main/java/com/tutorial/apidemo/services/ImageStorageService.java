package com.tutorial.apidemo.services;


import org.apache.commons.io.FilenameUtils;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.StreamUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.UUID;
import java.util.stream.Stream;


@Service
public class ImageStorageService implements IStorageService {

    private final Path storageFolder = Paths.get("uploads");

    public ImageStorageService() {
        try {
            Files.createDirectories(storageFolder);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    private boolean isImageFile(MultipartFile file) {
        String fileExtension = FilenameUtils.getExtension(file.getOriginalFilename());
        assert fileExtension != null;
        return Arrays.asList(new String[]{"png", "jpg", "jpeg"}).contains(fileExtension.trim().toLowerCase());
    }

    @Override
    public String storeFile(MultipartFile file) {
        String generatedFileName;
        try {
            if (file.isEmpty()) {
                throw new RuntimeException("Failed to store empty file");
            }

            if (!isImageFile(file)) {
                throw new RuntimeException("You can only upload image file");
            }

            float fileSize = (float) file.getSize() / 1_000_000;
            if (fileSize > 5.0f) {
                throw new RuntimeException("File size should be less than 5MB");
            }

            String fileExtension = FilenameUtils.getExtension(file.getOriginalFilename());
            generatedFileName = UUID.randomUUID().toString().replace("-", "");
            generatedFileName = generatedFileName + "." + fileExtension;
            Path desPath = this.storageFolder
                    .resolve(Paths.get(generatedFileName))
                    .normalize()
                    .toAbsolutePath();
            if (!desPath.getParent().equals(this.storageFolder.toAbsolutePath())) {
                throw new RuntimeException("Failed to store empty file");
            }
            try (InputStream in = file.getInputStream()) {
                Files.copy(in, desPath, StandardCopyOption.REPLACE_EXISTING);
            }
        } catch (IOException e) {
            throw new RuntimeException("Failed to store empty file", e);
        }
        return generatedFileName;
    }

    @Override
    public Stream<Path> loadAll() {
        try {
            return Files.walk(this.storageFolder,1)
                    .filter(path -> !path.equals(this.storageFolder))
                    .map(this.storageFolder::relativize);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public byte[] readFileContent(String fileName) {
        try {
            Path file = storageFolder.resolve(fileName);
            Resource resource = new UrlResource(file.toUri());
            if (resource.exists() || resource.isReadable()) {
                return StreamUtils.copyToByteArray(resource.getInputStream());
            } else {
                throw new RuntimeException("Could not read file: " + fileName);
            }
        } catch (Exception exception) {
            throw new RuntimeException("Could not read file: " + fileName, exception);
        }

    }

    @Override
    public void deleteAllFile() {

    }
}
