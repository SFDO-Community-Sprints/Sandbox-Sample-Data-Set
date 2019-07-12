# Project Name
Sandbox Sample Data Set

### Project Description
This project is a set of sample data that can be used to populate a clean NPSP install. It’s intended to be used for learning purposes, e.g. training new users or new admins of NPSP to get them familiar with the base platform.


### Project Audience
Admins who are developing and testing new business processes and need sample data for a sandbox.


### Project Team
* List of Contributors:
** Jason Lantz
** Michael Kolodner
** Michelle Northrup
** Rita Leverett
** Victoria Tang

### Project Team Accomplishments
The team created a scractch org and began populating it with sample data. Jason contributed mapping that can be used in conjunction with Cumulus CI to import this data into a CCI-created scratch org.


### Contributing
Continue to add to the sample data set to add more objects, more records, and more types of records. Consider adding in data that supports different business processes: for example, structure some data around different types of fundraising drives, volunteer programs, or engagement initiatives.


### Project Roadmap
The data set includes records of volume and diversity to make it a useful set of sample data for nonprofit organizations to load into a testing org and use as a "training ground".


## Case Study
_This case study describes the fictitious org that is using this Salesforce instance. It describes the business processes that the org will be fulfilling with this SF setup._

Sprint to Code (STC) is an organization that hosts workshops to teach kids how to code. For this project, STC wants to use Salesforce to manage all incoming donations from organizations and from individuals. At this time, Salesforce is not being used for outgoing distribution of funds or for program (workshop) management.

STC wants to begin a recurring donor program in order to help stabilize their revenue stream. STC wants a full portrait of giving for each donor, which may include donations made by the donor’s affiliated organization (e.g. being able to see donations both from the individual and from the company she works for). The development team wants to get better at acknowledging the various kinds of donations they receive, whether financial or in-kind. 

STC runs a number of different campaigns, from direct mail to online campaigns, peer-to-peer and events (e.g. galas). These are all rolled up by calendar year. Some campaigns are used to support specific initiatives, e.g. to support girls learning code or to support kids from age 7-9.


## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.


## History
This project originally started as an idea to create a tool that would allow skilled admins to create sample sets of data for standard and custom objects (both NPSP objects as well as objects specific to that organization) and upload those data to sandboxes for training and testing purposes. We learned from the Cumulus CI team that many of the features requested are on the roadmap for Cumulus CI. We discussed what kinds of data would be reusable for different kinds of organizations. Our conclusion was that organizations are too unique to generalize to a single data set that will allow orgs to test their own unique data setup. See the [discussion notes](https://github.com/SFDO-Sprint-2019-Detroit/Sandbox-Data-Tool/blob/master/20190711-Discussion-Notes.md) for more notes on this portion of the project.

We decided to pivot to create a sample data set that has data for most NPSP objects. This will allow users new to Salesforce NPSP to have a realistic set of data that they can use to see how data in NPSP objects interact. This asset can also be used for community members to learn how to load a data set from a GitHub repo into their own project orgs, which will be a valuable learning tool for those looking to contribute to open-source projects.
