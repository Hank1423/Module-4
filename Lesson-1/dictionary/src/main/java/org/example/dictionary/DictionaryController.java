package org.example.dictionary;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {
    private static final Map<String, String> dictionary = new HashMap<>();

    static {
        dictionary.put("hello", "Xin chào");
        dictionary.put("book", "Quyển sách");
        dictionary.put("computer", "Máy tính");
        dictionary.put("keyboard", "Bàn phím");
        dictionary.put("mouse", "Con chuột");
    }

    @GetMapping("/")
    public String showForm() {
        return "index";
    }

    @PostMapping("/search")
    public String searchWord(@RequestParam("word") String word, Model model) {
        String searchKey = word.trim().toLowerCase();
        String result = dictionary.get(searchKey);

        model.addAttribute("searchWord", word);

        if (result != null) {
            model.addAttribute("result", result);
        } else {
            model.addAttribute("message", "Không tìm thấy từ này trong từ điển!");
        }

        return "index";
    }
}