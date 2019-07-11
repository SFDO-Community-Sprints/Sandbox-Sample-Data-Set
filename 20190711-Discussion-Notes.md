# Discussion Notes

_Notes captured by @vtangToD during initial brainstorming and problem definition on July 11, 2019_


* CumulusCI has a bulk API query in the Load task → you get a config file with the objects you care about, then the query/extract task does the SOQL queries to put those data into a super-light database
* Then the other task will take that mapping and those data and throw it into whatever org you want
* Tooling you can run against the org (not something you run in the org)
* Once you build the config file, you can create the data however you want
    * You can copy that data into a github repo
* Show how to use GitHub to capture a dataset and load the dataset into a new dev sandbox (for example)
* For user training and/or testing purposes
* Admin-friendly (probably a intermediate to super admin)
* Rita created custom metadata so that she could load sample volunteer jobs into a sandbox
    * And then copied the copy metadata into the desired object (via APEX)
* Ultimate objective: be able to produce a limited set of sample data that end users can interact with (for training or testing purposes) that is specific to the data setup of the unique org, and be able to bring that sample data into any particular org (including sandboxes, dev orgs, and scratch orgs)
* Needs to work in any kind of org (not just NPSP or EDA)
* Mass data import in NPSP can do all that, the data is stored in a spreadsheet
    * But won’t do it for cases? Only for contacts, accounts, and opportunities
* Some part of this may need a developer
* Who creates the dataset, who puts the dataset into something reusable, and who loads the dataset into the org
* Tricky part is defining the configuration (mapping) → remembers what IDs you’re loading, references the dataset table, creates data relationships (e.g. lookups)
* Multiple people could build out the sample data into one org (e.g. master sandbox), and then you just choose a subset of data to pull out into each fresh sandbox
* Challenges:
    * Creating data in a source org 
        * could be produced by an admin, a dev, or batch data import in NPSP
        * done by admin or any other user
        * NPSP has a sample data generator in Python (e.g. I want # household and # people per household); called Faker
    * Capturing data (and analyzing it a little) 
        * e.g. relative dates; Jason says they’re working on using relative dates in capture tool; 
        * requires mapping (in the config file)
        * Done by dev or by CCI admin
    * Loading data
        * Done by dev or by CCI admin
* CCI Admin = someone who has CCI installed
* Mapping needs to be automated → CCI team is working on that
* For NPSP and EDA, create mapping that starts the standard objects
    * Do have to map each field; would have to build new mapping for each custom field
    * Existing mapping only has a portion of NPSP (not all the fields, not all the objects in the existing mapping)
* NPSP has a sample data set; EDA doesn’t have a sample data set
    * Good community project: create realistic sample data for both NPSP and EDA
        * Some data sets in NPSP repo now; could create different data sets for different use cases
* Mapping is the trickiest part because you need to know:
    * What objects and fields you need to capture field from
    * Order of data to be captured and loaded
    * User ID fields (e.g. can’t use tool to load engagement plan templates because it references user ids)
    * Date fields (e.g. regular or relative data fields)
    * Time-intensive
* Cumulus CI = framework built to create project-specific automation
    * All the automation lives in a GitHub repo
* Anything you can do in CCI, you should be able to do in MetaDeploy
* Need to help people get to the point where CCI admin can run the automation (e.g. to load test data)
* Interesting to try to create community-based data set for NPSP that we can publish in GitHub (and then people can use to populate their own scratch orgs)
    * Also a good training asset to teach people how to load data sets from GitHub projects (which will help open source projects)* Goal is to get more people trained up on this open-source community tool
* The weekly export tool can capture data (all tables, all fields) from a sandbox org
    * But you’d still have to figure out the ordering of what data to load in which order, figure out the dependencies, etc., do it's not really any easier
