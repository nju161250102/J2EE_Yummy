package edu.nju.yummy.controller;

import edu.nju.yummy.entity.UserEntity;
import edu.nju.yummy.service.AddressService;
import edu.nju.yummy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/address")
public class AddressController {

    private final AddressService addressService;

    @Autowired
    public AddressController(AddressService addressService) {
        this.addressService = addressService;
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("address")String address, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        addressService.saveAddress(userId, address);
        return "redirect:/user/info";
    }

    @PostMapping("/setDefault")
    public String setDefault(@ModelAttribute("default")int addressId) {
        addressService.setDefault(addressId);
        return "redirect:/user/info";
    }

}
