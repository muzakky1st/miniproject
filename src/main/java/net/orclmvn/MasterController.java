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
	private MemberService memberService;
	
	@Autowired
	private AssetService assetService;
	
/*-------------------------------------------------------------------------------------------------------*/	
	@RequestMapping("/")
	public String indexMain(Model model) {
		return "index";
	}
	
/*-------------------------------------------------------------------------------------------------------*/
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		return "dashboard";
	}
	
	@RequestMapping("/member")
	public String memberMain(Model model) {
		List<Member> listMembers = memberService.listAll();
		model.addAttribute("listMembers", listMembers);
		return "member";
	}

	@RequestMapping(value = "/member/save", method = RequestMethod.POST)
	public String SaveMember(@Valid Member member, BindingResult result, ModelMap model,
			RedirectAttributes redirectattributes) {
		memberService.save(member);
		return "redirect:/member";
	}

	@RequestMapping(value = "/member/update", method = RequestMethod.POST)
	public String editAsset(@Valid Member member, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) {
		memberService.save(member);
		return "redirect:/member";
	}

	@RequestMapping(value = "member/memberedit/{id}", method = RequestMethod.GET)
	public String memberEdit(@PathVariable(name = "id") int memberid, Model model) {
		Member member = memberService.get(memberid);
		model.addAttribute("member", member);
		return "memberedit";
	}
	
	@RequestMapping(value = "member/delete/{id}", method = RequestMethod.GET)
	public String deleteForm(@PathVariable(name = "id") int memberid) {
		memberService.delete(memberid);
		return "redirect:/member";
	}

	@RequestMapping(value = "/member/addmember", method = RequestMethod.GET)
	public String memberForm(ModelMap model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "addmember";
	}

/*----------------------------------------------------------------------------------------------------------*/
	@RequestMapping("/asset")
	public String assetMain(Model model) {
		List<Asset> listAssets = assetService.listAll();
		model.addAttribute("listAssets", listAssets);
		return "asset";
	}
	
	@RequestMapping(value = "/asset/assetadd", method = RequestMethod.GET)
	public String assetForm(ModelMap model) {
		Asset asset = new Asset();
		model.addAttribute("asset", asset);
		return "assetadd";
	}
	
	@RequestMapping(value = "/asset/save", method = RequestMethod.POST)
	public String SaveAsset(@Valid Asset asset, BindingResult result, ModelMap model,
			RedirectAttributes redirectattributes) {
		assetService.save(asset);
		return "redirect:/asset";
	}
	
	@RequestMapping(value = "asset/delete/{id}", method = RequestMethod.GET)
	public String assetDeleteForm(@PathVariable(name = "id") int assetid) {
		assetService.delete(assetid);
		return "redirect:/asset";
	}
	
	@RequestMapping(value = "asset/assetedit/{id}", method = RequestMethod.GET)
	public String assetEdit(@PathVariable(name = "id") int assetid, Model model) {
		Asset asset = assetService.get(assetid);
		model.addAttribute("asset", asset);
		return "assetedit";
	}
	
	@RequestMapping(value = "/asset/update", method = RequestMethod.POST)
	public String editAsset(@Valid Asset asset, BindingResult result, ModelMap model,
			RedirectAttributes redirectAttributes) {
		assetService.save(asset);
		return "redirect:/asset";
	}
	
	/*
	 * @ModelAttribute("category") public List<String> initializeSections(){
	 * List<String> category= new ArrayList<String>(); category.add("Asset Tetap");
	 * category.add("Asset Bergerak"); return category; }
	 */
}
