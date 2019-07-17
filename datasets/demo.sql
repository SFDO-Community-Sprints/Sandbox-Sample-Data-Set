BEGIN TRANSACTION;
CREATE TABLE account (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	funding_focus VARCHAR(255), 
	grantmaker VARCHAR(255), 
	matching_gift_administrator_name VARCHAR(255), 
	matching_gift_amount_max VARCHAR(255), 
	matching_gift_amount_min VARCHAR(255), 
	matching_gift_annual_employee_max VARCHAR(255), 
	matching_gift_comments VARCHAR(255), 
	matching_gift_company VARCHAR(255), 
	matching_gift_email VARCHAR(255), 
	matching_gift_info_updated VARCHAR(255), 
	matching_gift_percent VARCHAR(255), 
	matching_gift_phone VARCHAR(255), 
	matching_gift_request_deadline VARCHAR(255), 
	membership_span VARCHAR(255), 
	membership_status VARCHAR(255), 
	number_of_household_members VARCHAR(255), 
	npe01__systemisindividual VARCHAR(255), 
	npsp__batch__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "account" VALUES(1,'Bagels and Fried Chicken','','false','','','','','','false','','','','','','','','','false','');
INSERT INTO "account" VALUES(2,'No More Homelessness','','false','','','','','','false','','','','','','','','','false','');
INSERT INTO "account" VALUES(3,'Smith Household','','false','','','','','','false','','','','','','','','1.0','true','');
INSERT INTO "account" VALUES(4,'Samani Household','','false','','','','','','false','','','','','','','','1.0','true','');
INSERT INTO "account" VALUES(5,'Baker Street','','false','','','','','','false','','','','','','','','','false','');
INSERT INTO "account" VALUES(6,'Globetree Household','','false','','','','','','false','','','','','','','','3.0','true','');
INSERT INTO "account" VALUES(7,'Sprint to Code','','false','','','','','','false','','','','','','','','','false','');
INSERT INTO "account" VALUES(8,'Twinkle Toes Dance Studio','','false','','','','','','false','','','','','','','','','false','');
INSERT INTO "account" VALUES(9,'Timbila Music Co.','','false','','','','','','false','','','','','','','','','false','');
INSERT INTO "account" VALUES(10,'O''brien and Flake Household','','false','','','','','','false','','','','','','','','2.0','true','');
CREATE TABLE account_soft_credit__c (
	id INTEGER NOT NULL, 
	amount VARCHAR(255), 
	role VARCHAR(255), 
	npsp__account__c VARCHAR(255), 
	npsp__opportunity__c VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE address__c (
	id INTEGER NOT NULL, 
	api_response VARCHAR(255), 
	address_type VARCHAR(255), 
	administrative_area VARCHAR(255), 
	ambiguous VARCHAR(255), 
	congressional_district VARCHAR(255), 
	county_name VARCHAR(255), 
	default_address VARCHAR(255), 
	latest_end_date VARCHAR(255), 
	latest_start_date VARCHAR(255), 
	mailingcity VARCHAR(255), 
	mailingcountry VARCHAR(255), 
	mailingpostalcode VARCHAR(255), 
	mailingstate VARCHAR(255), 
	mailingstreet2 VARCHAR(255), 
	mailingstreet VARCHAR(255), 
	pre_verification_address VARCHAR(255), 
	seasonal_end_day VARCHAR(255), 
	seasonal_end_month VARCHAR(255), 
	seasonal_start_day VARCHAR(255), 
	seasonal_start_month VARCHAR(255), 
	state_lower_district VARCHAR(255), 
	state_upper_district VARCHAR(255), 
	verification_status VARCHAR(255), 
	verified VARCHAR(255), 
	npsp__household_account__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "address__c" VALUES(1,'','Home','','false','','','true','','2019-07-11','Detroit','','','','','89 Otello Rd.','','','','','','','','','false','0011700000ukVU1AAM');
INSERT INTO "address__c" VALUES(2,'','Home','','false','','','true','','2019-07-11','Royal Oak','','48067','MI','','8450 W 10 Mile Rd','','','','','','','','','false','0011700000ukVQTAA2');
CREATE TABLE allocation__c (
	id INTEGER NOT NULL, 
	amount VARCHAR(255), 
	percent VARCHAR(255), 
	npsp__campaign__c VARCHAR(255), 
	npsp__general_accounting_unit__c VARCHAR(255), 
	npsp__opportunity__c VARCHAR(255), 
	npsp__payment__c VARCHAR(255), 
	npsp__recurring_donation__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "allocation__c" VALUES(1,'','100.0','70117000001dKwHAAU','a0a17000007EX0yAAG','','','');
CREATE TABLE batch__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	batch_status VARCHAR(255), 
	description VARCHAR(255), 
	number_of_items VARCHAR(255), 
	object_name VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE campaign (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	amountallopportunities VARCHAR(255), 
	amountwonopportunities VARCHAR(255), 
	isactive VARCHAR(255), 
	numberofcontacts VARCHAR(255), 
	numberofconvertedleads VARCHAR(255), 
	numberofleads VARCHAR(255), 
	numberofopportunities VARCHAR(255), 
	numberofresponses VARCHAR(255), 
	numberofwonopportunities VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "campaign" VALUES(1,'Girls Can Code','0.0','0.0','false','0','0','0','0','0','0');
INSERT INTO "campaign" VALUES(2,'Wall-E','0.0','0.0','false','2','0','0','0','2','0');
INSERT INTO "campaign" VALUES(3,'Girls Can Code 2020','0.0','0.0','false','0','0','0','0','0','0');
INSERT INTO "campaign" VALUES(4,'Hidden Figures','0.0','0.0','true','1','0','0','0','1','0');
INSERT INTO "campaign" VALUES(5,'Movie Night','0.0','0.0','true','0','0','0','0','0','0');
CREATE TABLE "case" (
	id INTEGER NOT NULL, 
	casenumber VARCHAR(255), 
	isclosed VARCHAR(255), 
	isescalated VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE contact (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	address_verification_status VARCHAR(255), 
	deceased VARCHAR(255), 
	donotcall VARCHAR(255), 
	do_not_contact VARCHAR(255), 
	exclude_from_household_formal_greeting VARCHAR(255), 
	exclude_from_household_informal_greeting VARCHAR(255), 
	exclude_from_household_name VARCHAR(255), 
	first_soft_credit_amount VARCHAR(255), 
	first_soft_credit_date VARCHAR(255), 
	hhid VARCHAR(255), 
	hasoptedoutofemail VARCHAR(255), 
	hasoptedoutoffax VARCHAR(255), 
	isemailbounced VARCHAR(255), 
	largest_soft_credit_amount VARCHAR(255), 
	largest_soft_credit_date VARCHAR(255), 
	lastname VARCHAR(255), 
	last_soft_credit_amount VARCHAR(255), 
	last_soft_credit_date VARCHAR(255), 
	number_of_soft_credits_last_n_days VARCHAR(255), 
	number_of_soft_credits_last_year VARCHAR(255), 
	number_of_soft_credits_this_year VARCHAR(255), 
	number_of_soft_credits_two_years_ago VARCHAR(255), 
	number_of_soft_credits VARCHAR(255), 
	primary_contact VARCHAR(255), 
	soft_credit_last_n_days VARCHAR(255), 
	is_address_override VARCHAR(255), 
	npe01__private VARCHAR(255), 
	npsp__batch__c VARCHAR(255), 
	npsp__current_address__c VARCHAR(255), 
	npsp__primary_affiliation__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "contact" VALUES(1,'J''aloni Smith','','false','false','false','false','false','false','0.0','','0011700000ukVVoAAM','false','false','false','0.0','','Smith','0.0','','0.0','0.0','0.0','0.0','0.0','true','0.0','false','false','','','');
INSERT INTO "contact" VALUES(2,'Reema Samani','','false','false','false','false','false','false','0.0','','0011700000ukVWRAA2','false','false','false','0.0','','Samani','0.0','','0.0','0.0','0.0','0.0','0.0','true','0.0','false','false','','','');
INSERT INTO "contact" VALUES(3,'Johanna Globetree','','false','false','false','false','false','false','0.0','','0011700000ukVQTAA2','false','false','false','0.0','','Globetree','0.0','','0.0','0.0','0.0','0.0','0.0','true','0.0','false','false','','a0L17000003vV7KEAU','');
INSERT INTO "contact" VALUES(4,'Jaden Globetree','','false','false','false','false','false','false','0.0','','0011700000ukVQTAA2','false','false','false','0.0','','Globetree','0.0','','0.0','0.0','0.0','0.0','0.0','false','0.0','false','false','','a0L17000003vV7KEAU','');
INSERT INTO "contact" VALUES(5,'Taylor Globetree','','false','false','false','false','false','false','0.0','','0011700000ukVQTAA2','false','false','false','0.0','','Globetree','0.0','','0.0','0.0','0.0','0.0','0.0','false','0.0','false','false','','a0L17000003vV7KEAU','');
INSERT INTO "contact" VALUES(6,'Snow Flake','','false','false','false','false','false','false','55.23','2018-07-11','0011700000ukVU1AAM','false','false','false','55.23','2018-07-11','Flake','55.23','2018-07-11','1.0','1.0','0.0','0.0','1.0','false','55.23','false','false','','a0L17000003vV7PEAU','0011700000ukVTDAA2');
INSERT INTO "contact" VALUES(7,'Jace O''brien','','false','false','false','false','false','false','0.0','','0011700000ukVU1AAM','false','false','false','0.0','','O''brien','0.0','','0.0','0.0','0.0','0.0','0.0','true','0.0','false','false','','a0L17000003vV7PEAU','0011700000ukVSaAAM');
CREATE TABLE dataimport__c (
	id INTEGER NOT NULL, 
	account1importstatus VARCHAR(255), 
	account1_city VARCHAR(255), 
	account1_country VARCHAR(255), 
	account1_name VARCHAR(255), 
	account1_phone VARCHAR(255), 
	account1_state_province VARCHAR(255), 
	account1_street VARCHAR(255), 
	account1_website VARCHAR(255), 
	account1_zip_postal_code VARCHAR(255), 
	account2importstatus VARCHAR(255), 
	account2_city VARCHAR(255), 
	account2_country VARCHAR(255), 
	account2_name VARCHAR(255), 
	account2_phone VARCHAR(255), 
	account2_state_province VARCHAR(255), 
	account2_street VARCHAR(255), 
	account2_website VARCHAR(255), 
	account2_zip_postal_code VARCHAR(255), 
	apexjobid VARCHAR(255), 
	campaign_member_status VARCHAR(255), 
	contact1importstatus VARCHAR(255), 
	contact1_alternate_email VARCHAR(255), 
	contact1_birthdate VARCHAR(255), 
	contact1_firstname VARCHAR(255), 
	contact1_home_phone VARCHAR(255), 
	contact1_lastname VARCHAR(255), 
	contact1_mobile_phone VARCHAR(255), 
	contact1_other_phone VARCHAR(255), 
	contact1_personal_email VARCHAR(255), 
	contact1_preferred_email VARCHAR(255), 
	contact1_preferred_phone VARCHAR(255), 
	contact1_salutation VARCHAR(255), 
	contact1_title VARCHAR(255), 
	contact1_work_email VARCHAR(255), 
	contact1_work_phone VARCHAR(255), 
	contact2importstatus VARCHAR(255), 
	contact2_alternate_email VARCHAR(255), 
	contact2_birthdate VARCHAR(255), 
	contact2_firstname VARCHAR(255), 
	contact2_home_phone VARCHAR(255), 
	contact2_lastname VARCHAR(255), 
	contact2_mobile_phone VARCHAR(255), 
	contact2_other_phone VARCHAR(255), 
	contact2_personal_email VARCHAR(255), 
	contact2_preferred_email VARCHAR(255), 
	contact2_preferred_phone VARCHAR(255), 
	contact2_salutation VARCHAR(255), 
	contact2_title VARCHAR(255), 
	contact2_work_email VARCHAR(255), 
	contact2_work_phone VARCHAR(255), 
	donationcampaignimportstatus VARCHAR(255), 
	donationimportstatus VARCHAR(255), 
	donation_amount VARCHAR(255), 
	donation_campaign_name VARCHAR(255), 
	donation_date VARCHAR(255), 
	donation_description VARCHAR(255), 
	donation_donor VARCHAR(255), 
	donation_member_level VARCHAR(255), 
	donation_membership_end_date VARCHAR(255), 
	donation_membership_origin VARCHAR(255), 
	donation_membership_start_date VARCHAR(255), 
	donation_name VARCHAR(255), 
	donation_possible_matches VARCHAR(255), 
	donation_record_type_name VARCHAR(255), 
	donation_stage VARCHAR(255), 
	donation_type VARCHAR(255), 
	failureinformation VARCHAR(255), 
	homeaddressimportstatus VARCHAR(255), 
	home_city VARCHAR(255), 
	home_country VARCHAR(255), 
	home_state_province VARCHAR(255), 
	home_street VARCHAR(255), 
	home_zip_postal_code VARCHAR(255), 
	household_phone VARCHAR(255), 
	importeddate VARCHAR(255), 
	paymentimportstatus VARCHAR(255), 
	payment_check_reference_number VARCHAR(255), 
	payment_method VARCHAR(255), 
	payment_possible_matches VARCHAR(255), 
	status VARCHAR(255), 
	npsp__account1_imported__c VARCHAR(255), 
	npsp__account2_imported__c VARCHAR(255), 
	npsp__contact1_imported__c VARCHAR(255), 
	npsp__contact2_imported__c VARCHAR(255), 
	npsp__donation_campaign_imported__c VARCHAR(255), 
	npsp__donation_imported__c VARCHAR(255), 
	npsp__home_address_imported__c VARCHAR(255), 
	npsp__household_account_imported__c VARCHAR(255), 
	npsp__npsp_data_import_batch__c VARCHAR(255), 
	npsp__payment_imported__c VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE dataimportbatch__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	account_custom_unique_id VARCHAR(255), 
	active_fields VARCHAR(255), 
	batch_description VARCHAR(255), 
	batch_process_size VARCHAR(255), 
	contact_custom_unique_id VARCHAR(255), 
	contact_matching_rule VARCHAR(255), 
	donation_date_range VARCHAR(255), 
	donation_matching_behavior VARCHAR(255), 
	donation_matching_implementing_class VARCHAR(255), 
	donation_matching_rule VARCHAR(255), 
	expected_count_of_gifts VARCHAR(255), 
	expected_total_batch_amount VARCHAR(255), 
	giftbatch VARCHAR(255), 
	last_processed_on VARCHAR(255), 
	post_process_implementing_class VARCHAR(255), 
	process_using_scheduled_job VARCHAR(255), 
	records_failed VARCHAR(255), 
	records_successfully_processed VARCHAR(255), 
	requiretotalmatch VARCHAR(255), 
	run_opportunity_rollups_while_processing VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE engagement_plan__c (
	id INTEGER NOT NULL, 
	completed_tasks VARCHAR(255), 
	status VARCHAR(255), 
	total_ep_tasks VARCHAR(255), 
	total_tasks VARCHAR(255), 
	npsp__account__c VARCHAR(255), 
	npsp__campaign__c VARCHAR(255), 
	npsp__case__c VARCHAR(255), 
	npsp__contact__c VARCHAR(255), 
	npsp__engagement_plan_template__c VARCHAR(255), 
	npsp__opportunity__c VARCHAR(255), 
	npsp__recurring_donation__c VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE engagement_plan_task__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	comments VARCHAR(255), 
	days_after VARCHAR(255), 
	priority VARCHAR(255), 
	reminder_time VARCHAR(255), 
	reminder VARCHAR(255), 
	send_email VARCHAR(255), 
	status VARCHAR(255), 
	type VARCHAR(255), 
	npsp__assigned_to__c VARCHAR(255), 
	npsp__engagement_plan_template__c VARCHAR(255), 
	npsp__parent_task__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "engagement_plan_task__c" VALUES(1,'Send letter of acknowledgement','','7.0','Normal','0','false','false','Not Started','Other','','a0V17000004E7sFEAS','');
INSERT INTO "engagement_plan_task__c" VALUES(2,'Call donor to thank him/her','','15.0','Normal','0','false','false','Not Started','Call','','a0V17000004E7sFEAS','');
INSERT INTO "engagement_plan_task__c" VALUES(3,'Add to annual impact report brochue','','','Normal','0','false','false','Not Started','Other','','a0V17000004E7sFEAS','');
CREATE TABLE engagement_plan_template__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	automatically_update_child_task_due_date VARCHAR(255), 
	default_assignee VARCHAR(255), 
	description VARCHAR(255), 
	reschedule_to VARCHAR(255), 
	skip_weekends VARCHAR(255), 
	total_engagement_plans VARCHAR(255), 
	total_tasks VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "engagement_plan_template__c" VALUES(1,'Recognize Major Gift Donors','false','User Creating Engagement Plan','A series of tasks to thank and recognize major gift donors.','Monday','true','0.0','3.0');
CREATE TABLE error__c (
	id INTEGER NOT NULL, 
	context_type VARCHAR(255), 
	datetime VARCHAR(255), 
	email_sent VARCHAR(255), 
	error_type VARCHAR(255), 
	full_message VARCHAR(255), 
	object_type VARCHAR(255), 
	posted_in_chatter VARCHAR(255), 
	record_url VARCHAR(255), 
	stack_trace VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE general_accounting_unit__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	active VARCHAR(255), 
	average_allocation VARCHAR(255), 
	description VARCHAR(255), 
	first_allocation_date VARCHAR(255), 
	largest_allocation VARCHAR(255), 
	last_allocation_date VARCHAR(255), 
	number_of_allocations_last_n_days VARCHAR(255), 
	number_of_allocations_last_year VARCHAR(255), 
	number_of_allocations_this_year VARCHAR(255), 
	number_of_allocations_two_years_ago VARCHAR(255), 
	smallest_allocation VARCHAR(255), 
	total_allocations_last_n_days VARCHAR(255), 
	total_allocations_last_year VARCHAR(255), 
	total_allocations_this_year VARCHAR(255), 
	total_allocations_two_years_ago VARCHAR(255), 
	total_allocations VARCHAR(255), 
	total_number_of_allocations VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "general_accounting_unit__c" VALUES(1,'Girls Learning Code','true','0.0','An initiative to support female students.','','0.0','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0');
INSERT INTO "general_accounting_unit__c" VALUES(2,'Pre-teen support','true','0.0','Initiatives to support programs for students aged 10-12.','','0.0','','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0');
CREATE TABLE grant_deadline__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	grant_deadline_due_date VARCHAR(255), 
	grant_deliverable_close_date VARCHAR(255), 
	grant_deliverable_requirements VARCHAR(255), 
	type VARCHAR(255), 
	npsp__opportunity__c VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE lead (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	company VARCHAR(255), 
	companycity VARCHAR(255), 
	companycountry VARCHAR(255), 
	companypostalcode VARCHAR(255), 
	companystate VARCHAR(255), 
	companystreet VARCHAR(255), 
	donotcall VARCHAR(255), 
	hasoptedoutofemail VARCHAR(255), 
	hasoptedoutoffax VARCHAR(255), 
	isconverted VARCHAR(255), 
	isunreadbyowner VARCHAR(255), 
	lastname VARCHAR(255), 
	status VARCHAR(255), 
	npsp__batch__c VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE level__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	active VARCHAR(255), 
	description VARCHAR(255), 
	level_field VARCHAR(255), 
	maximum_amount VARCHAR(255), 
	minimum_amount VARCHAR(255), 
	previous_level_field VARCHAR(255), 
	source_field VARCHAR(255), 
	target VARCHAR(255), 
	npsp__engagement_plan_template__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "level__c" VALUES(1,'Major Gift','true','At $10,000 in total gifts (all time, no restrictions on gift type).','Level__c','','10000.0','','npo02__TotalOppAmount__c','Contact','a0V17000004E7sFEAS');
INSERT INTO "level__c" VALUES(2,'Mid-Level','true','At least $1,000 and less than $10,000 in total gifts (all time, no restrictions on gift type).','Level__c','10000.0','1000.0','','npo02__TotalOppAmount__c','Contact','');
CREATE TABLE npe01__opppayment__c (
	id INTEGER NOT NULL, 
	payment_acknowledged_date VARCHAR(255), 
	payment_acknowledgment_status VARCHAR(255), 
	npe01__opportunity VARCHAR(255), 
	npe01__paid VARCHAR(255), 
	npe01__written_off VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "npe01__opppayment__c" VALUES(1,'','','0061700000K1eg8AAB','true','false');
INSERT INTO "npe01__opppayment__c" VALUES(2,'','','0061700000K1eg3AAB','true','false');
INSERT INTO "npe01__opppayment__c" VALUES(3,'','','0061700000K1edhAAB','true','false');
INSERT INTO "npe01__opppayment__c" VALUES(4,'','','0061700000K1ediAAB','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(5,'','','0061700000K1edjAAB','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(6,'','','0061700000K1edkAAB','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(7,'','','0061700000K1edlAAB','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(8,'','','0061700000K1eeGAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(9,'','','0061700000K1eeHAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(10,'','','0061700000K1eeIAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(11,'','','0061700000K1eeJAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(12,'','','0061700000K1eeKAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(13,'','','0061700000K1eeLAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(14,'','','0061700000K1eeMAAR','false','false');
INSERT INTO "npe01__opppayment__c" VALUES(15,'','','0061700000K1edDAAR','true','false');
CREATE TABLE npe03__recurring_donation__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	always_use_last_day_of_month VARCHAR(255), 
	day_of_month VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "npe03__recurring_donation__c" VALUES(1,'Jace O''brien Recurring Donation 7/11/2019','false','');
CREATE TABLE npe4__relationship__c (
	id INTEGER NOT NULL, 
	related_opportunity_contact_role VARCHAR(255), 
	npe4ontact VARCHAR(255), 
	npe4__system_systemcreated VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "npe4__relationship__c" VALUES(1,'','0031700000tZBDOAA4','false');
INSERT INTO "npe4__relationship__c" VALUES(2,'','0031700000tZBDnAAO','true');
INSERT INTO "npe4__relationship__c" VALUES(3,'','0031700000tZBBIAA4','false');
INSERT INTO "npe4__relationship__c" VALUES(4,'','0031700000tZBAyAAO','true');
INSERT INTO "npe4__relationship__c" VALUES(5,'','0031700000tZBAyAAO','true');
INSERT INTO "npe4__relationship__c" VALUES(6,'','0031700000tZBBXAA4','false');
CREATE TABLE npe5__affiliation__c (
	id INTEGER NOT NULL, 
	related_opportunity_contact_role VARCHAR(255), 
	npe5ontact VARCHAR(255), 
	npe5__organization VARCHAR(255), 
	npe5__primary VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "npe5__affiliation__c" VALUES(1,'','0031700000tZBDnAAO','0011700000ukVTDAA2','true');
INSERT INTO "npe5__affiliation__c" VALUES(2,'','0031700000tZBDOAA4','0011700000ukVSaAAM','true');
CREATE TABLE npo02__household__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	number_of_household_members VARCHAR(255), 
	npo02__always_anonymous VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE opportunity (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	acknowledgment_date VARCHAR(255), 
	acknowledgment_status VARCHAR(255), 
	ask_date VARCHAR(255), 
	closedate VARCHAR(255), 
	closed_lost_reason VARCHAR(255), 
	disablecontactroleautomation VARCHAR(255), 
	fair_market_value VARCHAR(255), 
	forecastcategory VARCHAR(255), 
	gift_strategy VARCHAR(255), 
	grant_contract_date VARCHAR(255), 
	grant_contract_number VARCHAR(255), 
	grant_period_end_date VARCHAR(255), 
	grant_period_start_date VARCHAR(255), 
	grant_program_area_s VARCHAR(255), 
	grant_requirements_website VARCHAR(255), 
	hasopenactivity VARCHAR(255), 
	hasopportunitylineitem VARCHAR(255), 
	hasoverduetask VARCHAR(255), 
	honoree_name VARCHAR(255), 
	in_kind_description VARCHAR(255), 
	in_kind_donor_declared_value VARCHAR(255), 
	in_kind_type VARCHAR(255), 
	isclosed VARCHAR(255), 
	isprivate VARCHAR(255), 
	iswon VARCHAR(255), 
	is_grant_renewal VARCHAR(255), 
	matching_gift_employer VARCHAR(255), 
	matching_gift_status VARCHAR(255), 
	next_grant_deadline_due_date VARCHAR(255), 
	notification_message VARCHAR(255), 
	notification_preference VARCHAR(255), 
	notification_recipient_information VARCHAR(255), 
	notification_recipient_name VARCHAR(255), 
	primary_contact_campaign_member_status VARCHAR(255), 
	qualified_date VARCHAR(255), 
	recurring_donation_installment_name VARCHAR(255), 
	recurring_donation_installment_number VARCHAR(255), 
	requested_amount VARCHAR(255), 
	stagename VARCHAR(255), 
	tribute_type VARCHAR(255), 
	npe01__do_not_automatically_create_payment VARCHAR(255), 
	npsp__batch__c VARCHAR(255), 
	npsp__honoree_contact__c VARCHAR(255), 
	npsp__matching_gift_account__c VARCHAR(255), 
	npsp__matching_gift__c VARCHAR(255), 
	npsp__notification_recipient_contact__c VARCHAR(255), 
	npsp__previous_grant_opportunity__c VARCHAR(255), 
	npsp__primary_contact__c VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "opportunity" VALUES(1,'Jace O''brien Donation 7/11/2019','','','','2016-07-11','','false','','Closed','','','','','','','','false','false','false','','','false','','true','false','true','false','','','','','','','','','','','','','Closed Won','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(2,'donation','','','','2019-06-03','','false','','Closed','','','','','','','','false','false','false','','','false','','true','false','true','false','','','','','','','','','','','','','Posted','','false','','','','','','','');
INSERT INTO "opportunity" VALUES(3,'Jace O''brien Donation 7/11/2019','','','','2018-07-11','','false','','Closed','','','','','','','','false','false','false','','','false','','true','false','true','false','','','','','','','','','','','','','Posted','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(4,'Jace O''brien Donation (1) 30/08/2019','','','','2019-08-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(1)','1.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(5,'Jace O''brien Donation (2) 30/09/2019','','','','2019-09-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(2)','2.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(6,'Jace O''brien Donation (3) 30/10/2019','','','','2019-10-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(3)','3.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(7,'Jace O''brien Donation (4) 30/11/2019','','','','2019-11-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(4)','4.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(8,'Jace O''brien Donation (5) 30/12/2019','','','','2019-12-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(5)','5.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(9,'Jace O''brien Donation (6) 30/01/2020','','','','2020-01-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(6)','6.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(10,'Jace O''brien Donation (7) 29/02/2020','','','','2020-02-29','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(7)','7.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(11,'Jace O''brien Donation (8) 30/03/2020','','','','2020-03-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(8)','8.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(12,'Jace O''brien Donation (9) 30/04/2020','','','','2020-04-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(9)','9.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(13,'Jace O''brien Donation (10) 30/05/2020','','','','2020-05-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(10)','10.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(14,'Jace O''brien Donation (11) 30/06/2020','','','','2020-06-30','','false','','Pipeline','','','','','','','','false','false','false','','','false','','false','false','false','false','','','','','','','','','','(11)','11.0','','Pledged','','false','','','','','','','0031700000tZBDOAA4');
INSERT INTO "opportunity" VALUES(15,'50 Bags of Popcorn','2019-05-08','Acknowledged','','2019-04-08','','false','','Omitted','','','','','','','','false','false','false','','','false','','true','false','true','false','','','','','','','','','','','','','In-Kind Received','','false','','','','','','','');
CREATE TABLE partial_soft_credit__c (
	id INTEGER NOT NULL, 
	amount VARCHAR(255), 
	contact_name VARCHAR(255), 
	contact_role_id VARCHAR(255), 
	role_name VARCHAR(255), 
	npsp__contact__c VARCHAR(255), 
	npsp__opportunity__c VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE schedulable__c (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	active VARCHAR(255), 
	class_name VARCHAR(255), 
	frequency VARCHAR(255), 
	last_time_run VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE user (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	alias VARCHAR(255), 
	communitynickname VARCHAR(255), 
	defaultgroupnotificationfrequency VARCHAR(255), 
	digestfrequency VARCHAR(255), 
	email VARCHAR(255), 
	emailencodingkey VARCHAR(255), 
	emailpreferencesautobcc VARCHAR(255), 
	emailpreferencesautobccstayintouch VARCHAR(255), 
	emailpreferencesstayintouchreminder VARCHAR(255), 
	forecastenabled VARCHAR(255), 
	isactive VARCHAR(255), 
	isextindicatorvisible VARCHAR(255), 
	isprofilephotoactive VARCHAR(255), 
	languagelocalekey VARCHAR(255), 
	lastname VARCHAR(255), 
	localesidkey VARCHAR(255), 
	profileid VARCHAR(255), 
	receivesadmininfoemails VARCHAR(255), 
	receivesinfoemails VARCHAR(255), 
	timezonesidkey VARCHAR(255), 
	userpermissionscallcenterautologin VARCHAR(255), 
	userpermissionsinteractionuser VARCHAR(255), 
	userpermissionsjigsawprospectinguser VARCHAR(255), 
	userpermissionsknowledgeuser VARCHAR(255), 
	userpermissionsmarketinguser VARCHAR(255), 
	userpermissionsmobileuser VARCHAR(255), 
	userpermissionsofflineuser VARCHAR(255), 
	userpermissionssfcontentuser VARCHAR(255), 
	userpermissionssiteforcecontributoruser VARCHAR(255), 
	userpermissionssiteforcepublisheruser VARCHAR(255), 
	userpermissionssupportuser VARCHAR(255), 
	userpermissionsworkdotcomuserfeature VARCHAR(255), 
	userpreferencesactivityreminderspopup VARCHAR(255), 
	userpreferencesapexpagesdevelopermode VARCHAR(255), 
	userpreferencescachediagnostics VARCHAR(255), 
	userpreferencescontentemailasandwhen VARCHAR(255), 
	userpreferencescontentnoemail VARCHAR(255), 
	userpreferencescreatelexappswtshown VARCHAR(255), 
	userpreferencesdiscommentafterlikeemail VARCHAR(255), 
	userpreferencesdismentionscommentemail VARCHAR(255), 
	userpreferencesdisprofpostcommentemail VARCHAR(255), 
	userpreferencesdisableallfeedsemail VARCHAR(255), 
	userpreferencesdisablebookmarkemail VARCHAR(255), 
	userpreferencesdisablechangecommentemail VARCHAR(255), 
	userpreferencesdisableendorsementemail VARCHAR(255), 
	userpreferencesdisablefeedbackemail VARCHAR(255), 
	userpreferencesdisablefilesharenotificationsforapi VARCHAR(255), 
	userpreferencesdisablefollowersemail VARCHAR(255), 
	userpreferencesdisablelatercommentemail VARCHAR(255), 
	userpreferencesdisablelikeemail VARCHAR(255), 
	userpreferencesdisablementionspostemail VARCHAR(255), 
	userpreferencesdisablemessageemail VARCHAR(255), 
	userpreferencesdisableprofilepostemail VARCHAR(255), 
	userpreferencesdisablesharepostemail VARCHAR(255), 
	userpreferencesdisableworkemail VARCHAR(255), 
	userpreferencesenableautosubforfeeds VARCHAR(255), 
	userpreferenceseventreminderscheckboxdefault VARCHAR(255), 
	userpreferencesexcludemailappattachments VARCHAR(255), 
	userpreferencesfavoritesshowtopfavorites VARCHAR(255), 
	userpreferencesfavoriteswtshown VARCHAR(255), 
	userpreferencesglobalnavbarwtshown VARCHAR(255), 
	userpreferencesglobalnavgridmenuwtshown VARCHAR(255), 
	userpreferenceshascelebrationbadge VARCHAR(255), 
	userpreferenceshidebiggerphotocallout VARCHAR(255), 
	userpreferenceshidecsndesktoptask VARCHAR(255), 
	userpreferenceshidecsngetchattermobiletask VARCHAR(255), 
	userpreferenceshidechatteronboardingsplash VARCHAR(255), 
	userpreferenceshideenduseronboardingassistantmodal VARCHAR(255), 
	userpreferenceshidelightningmigrationmodal VARCHAR(255), 
	userpreferenceshides1browserui VARCHAR(255), 
	userpreferenceshidesecondchatteronboardingsplash VARCHAR(255), 
	userpreferenceshidesfxwelcomemat VARCHAR(255), 
	userpreferencesjigsawlistuser VARCHAR(255), 
	userpreferenceslightningexperiencepreferred VARCHAR(255), 
	userpreferencesnewlightningreportrunpageenabled VARCHAR(255), 
	userpreferencespathassistantcollapsed VARCHAR(255), 
	userpreferencespreviewcustomtheme VARCHAR(255), 
	userpreferencespreviewlightning VARCHAR(255), 
	userpreferencesrecordhomereservedwtshown VARCHAR(255), 
	userpreferencesrecordhomesectioncollapsewtshown VARCHAR(255), 
	userpreferencesremindersoundoff VARCHAR(255), 
	userpreferencesshowcitytoexternalusers VARCHAR(255), 
	userpreferencesshowcitytoguestusers VARCHAR(255), 
	userpreferencesshowcountrytoexternalusers VARCHAR(255), 
	userpreferencesshowcountrytoguestusers VARCHAR(255), 
	userpreferencesshowemailtoexternalusers VARCHAR(255), 
	userpreferencesshowemailtoguestusers VARCHAR(255), 
	userpreferencesshowfaxtoexternalusers VARCHAR(255), 
	userpreferencesshowfaxtoguestusers VARCHAR(255), 
	userpreferencesshowmanagertoexternalusers VARCHAR(255), 
	userpreferencesshowmanagertoguestusers VARCHAR(255), 
	userpreferencesshowmobilephonetoexternalusers VARCHAR(255), 
	userpreferencesshowmobilephonetoguestusers VARCHAR(255), 
	userpreferencesshowpostalcodetoexternalusers VARCHAR(255), 
	userpreferencesshowpostalcodetoguestusers VARCHAR(255), 
	userpreferencesshowprofilepictoguestusers VARCHAR(255), 
	userpreferencesshowstatetoexternalusers VARCHAR(255), 
	userpreferencesshowstatetoguestusers VARCHAR(255), 
	userpreferencesshowstreetaddresstoexternalusers VARCHAR(255), 
	userpreferencesshowstreetaddresstoguestusers VARCHAR(255), 
	userpreferencesshowtitletoexternalusers VARCHAR(255), 
	userpreferencesshowtitletoguestusers VARCHAR(255), 
	userpreferencesshowworkphonetoexternalusers VARCHAR(255), 
	userpreferencesshowworkphonetoguestusers VARCHAR(255), 
	userpreferencessortfeedbycomment VARCHAR(255), 
	userpreferencessuppresseventsfxreminders VARCHAR(255), 
	userpreferencessuppresstasksfxreminders VARCHAR(255), 
	userpreferencestaskreminderscheckboxdefault VARCHAR(255), 
	userpreferencesuserdebugmodepref VARCHAR(255), 
	username VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "user" VALUES(1,'Integration User','integ','integration1.4407085834085586E12','N','N','integration@example.com','ISO-8859-1','true','false','true','false','true','false','false','en_US','User','en_US','00e17000000GnsvAAC','false','true','America/Los_Angeles','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','integration@00d170000001gpiea2.com');
INSERT INTO "user" VALUES(2,'Security User','sec','insightssecurity1.4407085845464958E12','N','N','insightssecurity@example.com','ISO-8859-1','true','false','true','false','true','false','false','en_US','User','en_US','00e17000000GnsyAAC','false','true','America/Los_Angeles','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','insightssecurity@00d170000001gpiea2.com');
INSERT INTO "user" VALUES(3,'Chatter Expert','Chatter','Chatter Expert','N','D','noreply@chatter.salesforce.com','ISO-8859-1','true','false','true','false','true','false','true','en_US','Chatter Expert','en_US','00e17000000GnszAAC','false','true','America/Los_Angeles','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','chatty.00d170000001gpiea2.wvvtqqx7rx9v@chatter.salesforce.com');
INSERT INTO "user" VALUES(4,'User User','UUser','test-hcvty6lbirp9','N','D','vtang@tractionondemand.com','ISO-8859-1','true','false','true','true','true','false','false','en_US','User','en_CA','00e17000000GnsuAAC','true','false','America/New_York','false','false','false','false','true','false','true','true','false','false','true','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','false','true','false','false','false','false','false','false','true','false','sprint-sandbox@example.com');
COMMIT;
