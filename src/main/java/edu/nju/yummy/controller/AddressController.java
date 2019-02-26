package edu.nju.yummy.controller;

import edu.nju.yummy.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/address")
public class AddressController {

    private final AddressService addressService;

    @Autowired
    public AddressController(AddressService addressService) {
        this.addressService = addressService;
    }

    @GetMapping("/page")
    public String getPage() {
        return "user/address";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("address")String address, @ModelAttribute("pointInput")String pointInput, HttpSession session) {
        int userId = (int) session.getAttribute("id");
        addressService.saveAddress(userId, address, pointInput);
        return "redirect:/user/info";
    }

    @PostMapping("/setDefault")
    public String setDefault(@ModelAttribute("default")int addressId) {
        addressService.setDefault(addressId);
        return "redirect:/user/info";
    }

    @GetMapping("/delete/{id}")
    public String deleteAddress(@PathVariable("id") int addressId) {
        addressService.delete(addressId);
        return "redirect:/user/info";
    }

}
