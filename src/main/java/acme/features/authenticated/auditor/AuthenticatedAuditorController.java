
package acme.features.authenticated.auditor;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import acme.client.controllers.AbstractController;
import acme.client.data.accounts.Authenticated;
import acme.roles.Auditor;

@Controller
public class AuthenticatedAuditorController extends AbstractController<Authenticated, Auditor> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AuthenticatedAuditorCreateService createService;


	// Constructors -----------------------------------------------------------
	@PostConstruct
	protected void initialise() {
		super.addBasicCommand("create", this.createService);
	}
}
