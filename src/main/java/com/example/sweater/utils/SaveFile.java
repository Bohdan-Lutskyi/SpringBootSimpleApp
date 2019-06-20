package com.example.sweater.utils;

import com.example.sweater.domain.Message;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.UUID;

public class SaveFile {

    @Value("${upload.path}")
    private String uploadPath;

    public void saveFile(
            @Valid Message message,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
//        if (file != null && !file.getOriginalFilename().isEmpty()) {
        if (file != null && !Objects.requireNonNull(file.getOriginalFilename()).isEmpty()) {
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + "/" + resultFilename));

            message.setFilename(resultFilename);
        }
    }

}
