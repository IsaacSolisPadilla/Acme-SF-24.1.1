
package acme.features.manager.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.client.data.models.Dataset;
import acme.client.services.AbstractService;
import acme.entities.projects.Project;
import acme.roles.Manager;

@Service
public class ManagerProjectShowService extends AbstractService<Manager, Project> {

	@Autowired
	private ManagerProjectRepository repository;


	@Override
	public void authorise() {
		boolean status;
		int id;
		Project project;
		Manager manager;

		id = super.getRequest().getData("id", int.class);
		project = this.repository.findOneProjectById(id);
		manager = project == null ? null : project.getManager();
		status = project != null && super.getRequest().getPrincipal().hasRole(manager);

		super.getResponse().setAuthorised(status);
	}

	@Override
	public void load() {
		Project object;
		int id;

		id = super.getRequest().getData("id", int.class);
		object = this.repository.findOneProjectById(id);

		super.getBuffer().addData(object);
	}

	@Override
	public void unbind(final Project object) {
		assert object != null;

		Dataset dataset;

		dataset = super.unbind(object, "code", "title", "abstractText", "isPublished", "hasFatalErrors", "cost", "link");

		super.getResponse().addData(dataset);
	}
}
