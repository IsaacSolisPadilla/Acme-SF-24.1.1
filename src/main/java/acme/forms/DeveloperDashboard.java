
package acme.forms;

import acme.client.data.AbstractForm;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DeveloperDashboard extends AbstractForm {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes -------------------------------------------------------------

	Integer						totalNumberOfTrainingModuleWithAnUpdateMoment;
	Integer						totalNumberOfTrainingSessionsWithALink;
	Double						average;
	Double						deviation;
	Integer						minimumTimeOfTheTrainingModules;
	Integer						maximumTimeOfTheTrainingModules;
}
