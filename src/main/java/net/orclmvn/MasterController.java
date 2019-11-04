package net.orclmvn;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import scala.collection.generic.BitOperations.Int;

@Controller
public class MasterController {

	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String usermain(Model model) {
		List<User> listUsers = userService.listAll();
		model.addAttribute("listUsers", listUsers);
		return "user";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String SaveUser(@Valid User user, BindingResult result, ModelMap model,
			RedirectAttributes redirectattributes) {
		userService.save(user);
		return "redirect:/";
	}

	@RequestMapping(value = "/edituser/edituser", method = RequestMethod.POST)
	public String editUser(@Valid User user, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) {
		userService.save(user);
		return "redirect:/";
	}

	@RequestMapping(value = "/edituser/{id}", method = RequestMethod.GET)
	public String userEdit(@PathVariable(name = "id") int id, Model model) {
		User user = userService.get(id);
		model.addAttribute("user", user);
		return "edituser";
	}

	/*
	 * @RequestMapping("/user") public String user(Model model) { List<User>
	 * listUsers = userService.listAll(); model.addAttribute("listUsers",
	 * listUsers); return "user"; }
	 */

	@RequestMapping(value = "user/delete/{id}", method = RequestMethod.GET)
	public String deleteForm(@PathVariable(name = "id") int id) {
		userService.delete(id);
		return "redirect:/";
	}

	@RequestMapping(value = "adduser", method = RequestMethod.GET)
	public String userForm(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "adduser";
	}

	/*
	 * @ModelAttribute("brands") public List<String> initializeSections() {
	 * 
	 * List<String> brands = new ArrayList<String>(); brands.add("PANASONIC");
	 * brands.add("SAMSUNG"); brands.add("SANYO"); return brands; }
	 */
}
