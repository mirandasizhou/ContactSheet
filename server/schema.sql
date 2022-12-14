USE contacts;

CREATE TABLE IF NOT EXISTS contacts (
    `market` VARCHAR(15) CHARACTER SET utf8,
    `product` VARCHAR(15) CHARACTER SET utf8,
    `region` VARCHAR(14) CHARACTER SET utf8,
    `territory` VARCHAR(56) CHARACTER SET utf8,
    `carrier` VARCHAR(19) CHARACTER SET utf8,
    `name` VARCHAR(21) CHARACTER SET utf8,
    `title` VARCHAR(75) CHARACTER SET utf8,
    `email` VARCHAR(36) CHARACTER SET utf8 UNIQUE,
    `phone` VARCHAR(30) CHARACTER SET utf8,
    `phone2` VARCHAR(35) CHARACTER SET utf8,
    `notes` VARCHAR(65) CHARACTER SET utf8
);
INSERT INTO contacts VALUES
    ('Large Group','Medical','Northern CA','NorCal','Aetna','Ben Doolittle','Sales Executive','doolittleb@aetna.com ','916-470-9446 ',NULL,'cc: Fides'),
    ('Large Group','Medical','Northern CA','NorCal','Aetna','Kim Morrison','Sales Director','morrisonk@aetna.com','415-971-4589',NULL,'Sequoia''s Aetna LG rep'),
    ('Large Group','Medical','Northern CA','NorCal','Aetna','Quote Inbox',NULL,'AetnaNoCalLargeGroupRFP@AETNA.com',NULL,NULL,'General quote inbox'),
    ('Large Group','Ancillary','Northern CA','NorCal','Aetna','Kevin Hedges','Senior Sales Executive - Dental - Vision - Voluntary','HedgesK@aetna.com','925-936-5671',NULL,'cc: Maria'),
    ('Large Group','Dental/Vision','Northern CA','NorCal','Aetna','Maria Lugtu',NULL,'LugtuM@aetna.com','925-948-4948 ',NULL,'supports Kevin'),
    ('Large Group','Dental/Vision','Northern CA','NorCal','Aetna','Inbox','Inbox','CADentalVisionQuoteCenter@AETNA.com',NULL,NULL,'Generic Quote Inbox'),
    ('51-99','Medical','Out-of-State','CA & OOS','Aetna','Yvonne Bracamontes ','Sales Executive, CA Small Group Sales','bracamontesy@aetna.com','559-240-6625','559-241-5043','small group - contact for OOS groups'),
    ('Large Group','Medical','Northern CA','NorCal','Anthem','Inbox','Inbox','QuoteAnthemNorth@anthem.com',NULL,NULL,'Generic Quote Inbox'),
    ('Large Group','Medical','Northern CA','Bay Area','Anthem','Joy Chai','Sales Account Executive, Large Group','Joy.chai@anthem.com ','(925) 532-9715 ',NULL,'cc: Joseph'),
    ('Large Group','Medical','Northern CA','Bay Area','Anthem','Ruby Mann','Account Service Coordinator','ruby.mann@anthem.com','(530) 312-6112 ',NULL,'supports Joy'),
    ('Large Group','Ancillary','Northern CA','Bay Area','Anthem','Christine Mouanoutoua','Large Group Specialty Sales, Sales Account Representative III','Christine.Mouanoutoua@anthem.com','(559) 334-1629',NULL,'supports Joy'),
    ('Large Group','Medical','Northern CA','Central Valley, Fresno & Sacramento','Anthem','Blake Billinger','Sales Account Executive, Large Group','blake.billinger@anthem.com','(925) 266-2862','(559) 353-3532   ','cc: Erin'),
    ('Large Group','Medical','Northern CA','Central Valley','Anthem','Erin Teves','Account Service Manager, New Business','erin.teves@anthem.com','(925) 927-6180',NULL,'supports Blake'),
    ('Large Group','Ancillary','Northern CA','Central Valley','Anthem','C.J. Faust','Specialty Sales Executive','cj.faust@anthem.com','510.246.1681',NULL,NULL),
    ('Large Group','Medical','Southern CA','Los Angeles','Anthem','Asuncion Sanchez','Sales Account Executive, Large Group','asuncion.sanchez@anthem.com','(818) 438-6573',NULL,'cc: Marco'),
    ('Large Group','Medical','Southern CA','Los Angeles','Anthem','Marco Flores','Sales Account Representative, Large Group','marco.flores@anthem.com','213-553-5465','213-431-3672','supports Ace'),
    ('Large Group','Medical','Northern CA','San Francisco','Blue Shield of CA','Adrian Diaz','Sales Executive ??? Core Accounts','adrian.diaz@blueshieldca.com','(925) 266-0741',NULL,NULL),
    ('Large Group','Medical','Northern CA','South Bay','Blue Shield of CA','Gregory Kim','Senior Sales Executive ','Gregory.Kim@BlueShieldCA.com','(415) 308-6126 ',NULL,NULL),
    ('Large Group','Medical','Northern CA','Central Valley','Blue Shield of CA','Joaquin Sandoval','Sales Executive','Joaquin.Sandoval@blueshieldca.com ','559.440.4004 ',NULL,NULL),
    ('Large Group','Medical','Northern CA','Central Valley','Blue Shield of CA','April Hill','Senior Sales Analyst','april.hill@blueshieldca.com','925.395.9218 ','877.685.2676','supports Joaquin'),
    ('Large Group','Medical','Northern CA','Central Valley','Blue Shield of CA','Inbox','Inbox','BSC101plusRFPFresno@blueshieldca.com',NULL,NULL,'RFP Mailbox'),
    ('Large Group','Medical','Northern CA','Monterey, Santa Cruz, San Mateo','Cigna','Ron Alcantara','New Business Manager','ron.alcantara@cigna.com','650.296.1871',NULL,'Agencies: Sequoia, Brown & Brown, Acrisure???see NBM contact sheet)'),
    ('Large Group','Medical','Northern CA','Contra Costa, El Dorado, Placer, Sacramento, San Joaquin','Cigna','Brett Rodarte','New Business Manager','brett.rodarte@cigna.com','916.799.7058',NULL,'Agencies: Gallagher (Sac), EPIC (Sac)...see NBM contact sheet'),
    ('Large Group','Medical','Northern CA','Central Valley & San Francisco','Cigna','Dalton Settles','New Business Manager','dalton.settles@cigna.com','707.227.9924',NULL,'Taking over Aaron Force: Parelius'),
    ('Large Group','Medical','Northern CA','Alameda, Marin, Napa, Solano, Sonoma','Cigna','Candace Boss','New Business Manager','candace.boss@cigna.com','415.757.8483',NULL,'Agencies: Carpenter'),
    ('Large Group','Dental/Vision','Northern CA','NorCal','Cigna','Chris Miller','Dental Sales Manager','christopher.miller2@cigna.com','925.407.6241',NULL,'all counties'),
    ('Large Group','Life/Disability','Northern CA','NorCal','Cigna/New York Life','Jessica Petersen','Senior Sales Representative','Jessica.Petersen@Cigna.com  ','415.940.8246 ',NULL,'Agencies: Henderson'),
    ('Large Group','Life/Disability','Northern CA','NorCal','Cigna/New York Life','Danica Bracy','Senior Sales Representative','Danica_J_Bracy@newyorklife.com','(415) 361-8373',NULL,'Agencies: Sequoia'),
    ('Large Group','Medical','California','SoCal & NorCal','Health Net','Jennifer Glick','Sr. Account Consultant','Jennifer.R.Glick@healthnet.com','(818) 337-8595','(818) 676-7896',NULL),
    ('Large Group','Medical','California','SoCal & NorCal','Health Net','Inbox','Inbox','HNLargeGroupQuotes@Healthnet.com',NULL,NULL,'Generic Quote Inbox'),
    ('Large Group','Medical','Northern CA','NorCal','Health Net','Inbox','Inbox','CanopyCare-Quote@healthnet.com',NULL,NULL,'Generic Quote Inbox - Canopy only'),
    ('Large Group','Medical','Southern CA','San Diego','Health Net','Don Rasmussen','Sr. Account Executive Large Group Sales and Major Accounts','donald.c.rasmussen@healthnet.com','(619) 346-5741 ',NULL,NULL),
    ('Large Group','Medical','Northern CA','Bay Area','Kaiser','Jim Palmer','Large Group Senior Sales Executive','jim.palmer@kp.org','(408) 307-5540 ',NULL,'cc: Patrick'),
    ('Large Group','Medical','Northern CA','Bay Area','Kaiser','Patrick Wheeler','Sales Associate ??? Large Group','Patrick.G.Wheeler@kp.org','(916) 516-6788 ',NULL,'supports Jim'),
    ('Large Group','Medical','Northern CA','Sacramento, Central Valley & Fresno','Kaiser','Josh Keller','Large Group Sales Executive','josh.r.keller@kp.org','(916) 660-3240','(916) 614-4535','cc: Tim Johnston'),
    ('Large Group','Medical','Northern CA','Bay Area','Kaiser','Timothy Johnston','Senior Sales Associate ??? Large Group','Timothy.J.Johnston@kp.org','(916) 614-4533 (office)',NULL,'supports Josh'),
    ('Large Group','PEO Breakaway','Northern CA','Bay Area','Kaiser','Julian Hayward','PEO Field Manager, National Accounts','Julian.L.Hayward@kp.org','303.709.2828','303.306.2517',NULL),
    ('Large Group','Medical','Northern CA','East Bay','Sutter Health Plus','Joshua Jessup','Account Executive','jessupja@sutterhealth.org','916-247-7595 | Mobile','916-643-1241 | Office',NULL),
    ('Large Group','Medical','Northern CA','NorCal','United Healthcare','Kurt Hall','Account Executive | Key Accounts ','kurt.hall@uhc.com ','(916) 835-3468 ','(916) 403-0657 ',NULL),
    ('Large Group','Medical','Northern CA','NorCal','United Healthcare','Luke Trauth','Account Executive ??? Key Accounts','luke.discher@uhc.com','M 925.440.4381 (call or text) ','O 925.246.1332',NULL),
    ('Large Group','Medical','Northern CA','NorCal','United Healthcare','Monique Galvin','Sr. Sales Executive','monique.galvin@uhc.com ','916-390-2472',NULL,'Agency: RSC'),
    ('Large Group','Medical','Northern CA','NorCal','United Healthcare','Emily Livaich','Sr. New Business Coordinator','emily.livaich@uhc.com',NULL,NULL,'Agency: RSC'),
    ('Large Group','Ancillary','Northern CA','NorCal','United Healthcare','Rosemarie Bayham','Senior Sales Executive ??? Specialty Benefits ??? Key Accounts','rosemarie_bayham@uhc.com','(925) 330-3378  (Cell) ','(925) 363-6015  (Direct)  ',NULL),
    ('51-99','Medical','Northern CA','NorCal','United Healthcare','Heather Hensic','Account Executive, Small Group 1-100','Heather.hensic@uhc.com  ','Cell: (707) 501-7045',NULL,'Agencies: Sequoia'),
    ('51-99','Medical','Northern CA','NorCal','United Healthcare','Kelly Rodriguez','General Agent Broker Account Exec','kelly_f_rodriguez@uhc.com','P: 612-425-3877',NULL,'confirm override for OOS groups & confirm AE for agency'),
    ('51-99','Medical','Northern CA','NorCal','United Healthcare','Paige Phillips','Account Executive Small Group Business','Paige.Phillips@uhc.com','Cell: 408-661-3930','Phone: 925-246-1309',NULL),
    ('51-99','Medical','Northern CA','NorCal','United Healthcare','Shelby Moran','BROKER ACCOUNT EXECUTIVE ??? NORTHERN CALIFORNIA ','SHELBY_MORAN@UHC.COM ','PHONE: 866-416-6590',NULL,'Agencies: CAL insurance & Suess Insurance'),
    ('Large/Small','Ancillary','Northern CA','NorCal','MetLife','Sarah Wolf','Account Executive','Sjwolf@metlife.com','Direct Phone: 1.925.949.9770','Office Phone: 1.925.658.1107',NULL),
    ('Large/Small','Ancillary','Northern CA','NorCal','Principal','Inbox','Inbox','NocalSalesrfp@exchange.principal.com',NULL,NULL,NULL),
    ('Large/Small','Ancillary','Northern CA','NorCal','Principal','Matt Marovich','Director of Sales','marovich.matt@principal.com','415.640.6567 ',NULL,'Agencies: Sequoia, Henderson & Carpenter'),
    ('Large/Small','Ancillary','Northern CA','NorCal','Principal','McKenzie Popick','Sr. Sales Representative  ','popick.mckenzie@principal.com','925.583.4743 ',NULL,'Agencies: Parelius, Benefit Experts, Shepherd'),
    ('Large/Small','Ancillary','Northern CA','NorCal','Principal','Mike Nelsen','Director of Sales  ','nelsen.mike@principal.com','916.200.5665 ',NULL,'Agencies: Graybill'),
    ('Large/Small','Ancillary','Northern CA','NorCal','Principal','Ron Altbaum','Regional Sales Manager ??? Northern California','Altbaum.Ron@Principal.com','Mobile:  925-285-8308','Direct Office 925-378-6101',NULL),
    ('Large Group','Ancillary','Northern CA','NorCal','UNUM','William Sheifer','Sales Consultant','wsheifer@unum.com','Cell: (925) 457-5377',NULL,NULL),
    ('Large/Small','Ancillary','Northern CA','NorCal','UNUM','Inbox','Inbox','QuoteSanFrancisco@UNUM.COM',NULL,NULL,'Generic inbox'),
    ('Small Group','Ancillary','Northern CA','NorCal','UNUM','Kathryn Wilson','Small Business Consultant','kwilson1@unum.com','760.516.1096',NULL,NULL),
    ('Large/Small','Ancillary','Northern CA','NorCal','The Standard','Inbox','Inbox','SFDCOpportunities@standard.com',NULL,NULL,NULL),
    ('Large/Small','Ancillary','Northern CA','Peninsula & SF','The Standard','Gina Roberts  ','Senior Employee Benefits Consultant ','gina.roberts@standard.com','Cell: (925) 457-5789 ','Direct: (925) 280-5318 ','Agencies: Henderson & Sequoia; Carpenter; Benefit Experts'),
    ('Large/Small','Ancillary','Northern CA','South Bay','The Standard','Makayla Alton ','Employee Benefits Specialist','Makayla.Alton@standard.com','Cell 925.212.8770','Phone 925.280.5313 ','Agencies: James Diani (PPI), Shepherd'),
    ('Large/Small','Ancillary','Northern CA','NorCal','The Standard','Debbie Morehead ','Employee Benefits Sales Coordinator','deborah.morehead@standard.com','Phone 925.280.5301',NULL,NULL),
    ('Large/Small','Dental/Vision','Northern CA','NorCal','Ameritas','Jill Kohler ','Northern California Large Group Sales Representative','jill.kohler@ameritas.com','p: 415-301-0244  ',NULL,NULL),
    ('Large/Small','Ancillary','Northern CA','NorCal','Equitable','Nino Lazaro ','Senior Sales Director','nino.lazaro@equitable.com','m. (650) 703.4654 ',NULL,NULL),
    ('Large Group','Ancillary','Northern CA','NorCal','Guardian','Bill Neal','Executive Sales Consultant ??? Group Benefits (Core Market 25-1000 Employees)','bill_neal@glic.com','Mobile: 408.398.7653','Direct: 415.490.4420  (Walnut Creek',NULL),
    ('Large Group','Ancillary','Northern CA','NorCal','Guardian','Inbox','Inbox','quoteguardian@glic.com',NULL,NULL,'Generic quote inbox'),
    ('Large/Small','Ancillary','Northern CA','NorCal','Humana','Mike Donohoo','Sales Executive Bay Area','mdonohoo@humana.com','C-608-628-9846','T 866-650-3237',NULL),
    ('Large/Small','Ancillary','Northern CA','NorCal','Humana','Inbox','Inbox','SFQuote@humana.com',NULL,NULL,'Generic quote inbox'),
    ('Large/Small','Ancillary','Northern CA','San Francisco Bay Area','Humana','Gayle Doyle','Inside Sales Executive ','gdoyle1@humana.com','T 866-650-3705',NULL,NULL),
    ('1+','Medical','Out-of-State','KS/MO/IA/NE','Humana','Tamecia Richmond','Inside Sales Executive ','trichmond2@humana.com','Office: 888-777-4965',NULL,NULL),
    ('51 LF & 100+ FI','Medical','Out-of-State','Colorado','Humana','Matt Nelson','Field Sales Executive  ','MNelson8@humana.com','C: 734-972-6004',NULL,NULL),
    ('2-50 enrolled','Medical','Northern CA','NorCal','National General','Matt Wymore','Regional Sales Representative- Group Markets ','Matthew.Wymore@NGIC.com','D: 208-809-2826','O: (800) 736-6762 ext: 22826',NULL),
    ('50+ enrolled','Medical','Northern CA','NorCal','National General','Troy Slater','Regional Marketing Representative A&H','Troy.Slater@NGIC.com','D: (208) 809-2824','O: (800) 736-6762 ext: 22824',NULL),
    ('101+ eligible','Medical','Western Region','NorCal','Nippon Life','Dawn Quinn','Group Sales Manager','d-quinn@nipponlifebenefits.com','M: 213.220.0600','O: 213.628.2045',NULL);



