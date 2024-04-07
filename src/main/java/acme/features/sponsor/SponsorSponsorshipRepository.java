
package acme.features.sponsor;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.client.repositories.AbstractRepository;
import acme.entities.projects.Project;
import acme.entities.sponsorships.Sponsorship;
import acme.roles.Sponsor;

@Repository
public interface SponsorSponsorshipRepository extends AbstractRepository {

	@Query("select s from Sponsorship s where s.sponsor.id = :id")
	Collection<Sponsorship> findSponsorshipBySponsorId(int id);

	@Query("select s from Sponsorship s where s.id = :id")
	Sponsorship findOneSponsorshipById(int id);

	@Query("select s from Sponsor s where s.id = :id")
	Sponsor findOneSponsorById(int id);

	@Query("select p from Project p where p.id = :id")
	Project findOneProjectById(int id);

	@Query("select DISTINCT s.project from Sponsorship s where s.sponsor.id = :id")
	Collection<Project> findProjectsBySponsorId(int id);

	@Query("select s from Sponsorship s")
	Collection<Sponsorship> findAllSponsorship();

	@Query("select s from Sponsorship s where s.code = :code")
	Sponsorship findSponsorshipByCode(String code);

}
