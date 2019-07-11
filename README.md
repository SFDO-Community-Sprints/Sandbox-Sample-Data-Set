# Sandbox-Data-Tool

This project is a set of sample data that can be used to populate a clean NPSP install. It’s intended to be used for learning purposes, e.g. training new users or admins of NPSP to get them familiar with the base platform.

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.

## Case Study
Sprint to Code (STC) is an organization that hosts workshops to teach kids how to code. For this project, STC wants to use Salesforce to manage all incoming donations from organizations and from individuals. Salesforce is not being used for outgoing distribution of funds at this time.
STC wants to begin a recurring donor program in order to help stabilize their revenue stream. STC wants a full portrait of giving for each donor, which may include donations made by the donor’s affiliated organization (e.g. being able to see donations both from the individual and from the company she works for). The development team wants to get better at acknowledging the various kinds of donations they receive, whether financial or in-kind. 
STC runs a number of different campaigns, from direct mail to online campaigns, peer-to-peer and events (e.g. galas). These are all rolled up by calendar year. Some campaigns are used to support specific initiatives, e.g. to support girls learning code or to support kids from age 7-9.
