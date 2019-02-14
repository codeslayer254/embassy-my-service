/*INSERT PARENT COMPANY DETAILS*/
INSERT INTO COMPANY(ID, NAME) VALUES (1, 'Pepsi');
INSERT INTO COMPANY(ID, NAME) VALUES (2, 'Coca Cola');
INSERT INTO COMPANY(ID, NAME) VALUES (3, 'Sprite');

/*INSERT CAR CATEGORY DETAILS*/
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (1, 'XYZ10ABC', 1);
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (2, 'XYZ11ABC', 1);
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (3, 'XYZ12ABC', 1);
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (4, 'XYZ13ABC', 2);


/*INSERT EMPLOYEE ADDRESS DETAILS*/
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (1, 1, 'Street X', '12-341');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (2, 2, 'Street Y', '12-342');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (3, 3, 'Street Z', '12-343');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (4, 4, 'Street XX', '12-344');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (5, 5, 'Street YY', '12-345');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (6, 6, 'Street ZZ', '12-346');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (7, 7, 'Street XXX', '12-347');

/*INSERT EMPLOYEE CATEGORY DETAILS*/
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (1, 'Sales & Marketing', 1);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (2, 'Research & Development', 1);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (3, 'Administration', 1);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (4, 'Human Resources', 2);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (5, 'Sales & Marketing', 3);

/*INSERT EMPLOYEE CATEGORY DETAILS*/
INSERT INTO CATEGORY(ID, NAME) VALUES (1, 'DIPLOMATIC');
INSERT INTO CATEGORY(ID, NAME) VALUES (2, 'LOCAL STAFF');


/*INSERT EMPLOYEE SEED DATA*/
INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Dorcas', 'Rukunga', 'CHARGÉ D’AFFAIRES', 'Chargé D’Affaires a.i (Malaysia, The Philippines, Indonesia & Brunei)', 'images/staff/dorcas.jpg', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Mutero', 'Mutero', 'FINANCIAL ATTACHÉ', 'Financial Affairs', 'images/staff/Hanna-300x300.jpg', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Ruth', 'Kitonyi', 'FIRST SECRETARY', 'First Secretary', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1541939384/ruth_khc_kl_mi8qd3.png', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Fridah', 'Moraa', 'ADMIN ATTACHÈ', 'Administration', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1541939384/fridah_khc_kl_f9msdf.png  ', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

/*INSERT EVENT DETAILS*/
INSERT INTO EVENT(ID, TITLE, START_DATE, END_DATE, BODY, EXTENSION, DATE_PUBLISHED, WEBSITE,  LOCATION, EVENT_BANNER)
VALUES (uuid_generate_v4(), 'Sustainable Blue Economy Conference: Helping the world harness its blue potential','2018-11-26 07:00:00', '2018-11-28 19:00:00',
  '<p>Kenya and its co-hosts Canada and Japan are inviting the world to Nairobi for the first global conference on the sustainable blue economy.</p>
    <p>The Sustainable Blue Economy Conference is the first global conference on the sustainable blue economy. Over 4,000 participants from around the world are coming together to learn how to build a blue economy that:</p>
    <ol><li><strong>1. Harnesses the potential of our oceans, seas, lakes and rivers to improve the lives of all, particularly people in developing states, women, youth and Indigenous peoples</strong></li>
<li><strong>2. Leverages the latest innovations, scientific advances and best practices to build prosperity while conserving our waters for future generations</strong></li></ol>',
'{"data":{ "https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543156789/logo_preview_x1n8jq.png": "Sustainable Blue Economy Conference 2018"}}',
'2018-11-26 18:36:38', 'http://www.blueeconomyconference.go.ke/',
'Kenyatta International Convention Centre (KICC)', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543156789/logo_preview_x1n8jq.png');


/*INSERT OFFICE DETAILS*/
INSERT INTO OFFICE(ID, NAME, ADDRESS_ID, DEPARTMENT_ID) VALUES (1, 'Office of S&M Boston', 4, 1);
INSERT INTO OFFICE(ID, NAME, ADDRESS_ID, DEPARTMENT_ID) VALUES (2, 'Office of S&M New York', 5, 1);
INSERT INTO OFFICE(ID, NAME, ADDRESS_ID, DEPARTMENT_ID) VALUES (3, 'Office of R&D Boston', 6, 2);
INSERT INTO OFFICE(ID, NAME, ADDRESS_ID, DEPARTMENT_ID) VALUES (4, 'Office of A Los Angeles', 7, 3);

/*INSERT NAVIGATION PAGE CATEGORIES*/
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (1, 'index');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (2, 'news');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (3, 'admin');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (4, 'downloads');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (5, 'archive');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (6, 'business');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (7, 'career');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (8, 'cabinet');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (9, 'certificates');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (10, 'charter');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (11, 'event');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (12, 'investment');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (13, 'economy');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (14, 'holidays');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (15, 'consular');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (16, 'madaraka');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (17, 'birth');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (18, 'consuls');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (19, 'citizenship');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (20, 'government');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (21, 'gallery');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (22, 'user');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (23, 'about');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (24, 'kenya');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (25, 'passports');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (26, 'sports');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (27, 'evisa');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (28, 'newsroom');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (29, 'staff');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (30, 'relations');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (31, 'visas');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (32, 'visitke');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (33, 'latest');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (34, 'services');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (35, 'trade');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (36, 'unsdg');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (37, 'tourism');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (38, 'ict');
INSERT INTO PAGE_CATEGORY(ID, NAME) VALUES (39, '403');


/*INSERT NAVIGATION PAGE CONTENT*/
INSERT INTO NAVIGATION(ID, TITLE, IMAGE_NAME, DESCRIPTION, BODY, WRITER, ENABLED, PAGE_CATEGORY_ID, DATE_PUBLISHED)
VALUES
(1,  'Kenya Elected to Global ICT Council', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325954/cabinet_sec_ict_tsb4js.png',
   'Kenya scooped the seat at the council after garnering 140 votes',
  '<p> Kenya has been re-elected to the International Telecommunication Union Council, a key decision making organ of the UN specialized agency for ICTs. </p>
  <p>Kenya scooped the seat at the council after garnering 140 votes in a close election that saw Algeria and Morroco receive 134 and 133 votes respectively. The country will be among 13 nations that will represent Africa at the global ICT council.</p>
  <p>"The win at the ongoing ITU Plenipotentiary Conference in Dubai, United Arab Emirates is a stamp of confidence in the credibility and goodwill that Kenya enjoys in the global ICT community and her outstanding leadership in the development of ICT services," the Communications Authority of Kenya said in a statement.</p>
<p>ICT cabinet secretary Joe Mucheru led the country’s campaigns for the coveted seat at the council. Kenya joined the ITU Council in 1982 when it hosted the ITU Plenipotentiary Conference and has remained a member since then.</p>
  <p>The victory is the second major win for Kenya in the sector this year after John Omo was elected the African Telecommunications Union (ATU) Secretary-General in August this year.</p>',
  '<a href="https://www.the-star.co.ke/news/2018/11/05/kenya-elected-to-global-ict-council_c1845951" target="_blank">The Star</a>', TRUE, 33, '2018-11-05 18:36:38'),
  (2,  'Kenyan Gov’t to Use Blockchain in New Affordable Housing Project', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325988/kenya_map_nnd2cy.jpg',
   'Kenya is one of Africa’s leading countries regarding blockchain and cryptocurrency development.',
  '<p>The Kenyan government plans to leverage blockchain technology for the distribution of new government-funded housing units, according to reports from local news outlet the <a href="https://www.the-star.co.ke/news/2018/10/16/state-to-use-blockchain-tech-to-distribute-cheaper-houses_c1835153" target="_blank">Star</a>.</p>
  p>The Kenyan National Housing Fund will finance the initiative under the Finance Act 2018, and it plans to create an efficient allocation of the houses to those who need it using the distributed ledger technology.</p>
<p>The State Housing and Urban Development Permanent Secretary Charles Hinga said the Fund expects to raise about Sh55 billion a year (around $545 million) to build &#8220;cheaper 500,000 housing units.&#8221;</p>
<p>The Star quoted Cabinet Secretary for Transport and Housing James Macharia who spoke during a housing agenda meeting with the World Bank in Nairobi yesterday. He said the nascent technology would be used to distribute housing to deserving applicants in a bid to address past issues concerning &#8220;graft fears arising from beneficiaries and even legislators.&#8221;</p>
<p>“Kenya will use blockchain technology to ensure the rightful owners live in government-funded housing projects.”</p>
<p>According to Hinga, the ratio of mortgage to rent in the country is 6 to 1 and affordability of the properties remains a problem.</p>
<p>Out of over 2 million Kenyans employed in 2016, only three percent earned over 100,000 Kenyan Shillings (around $992).</p>
<p>Another challenge that could spring up as the government is set to build affordable homes is on the allocation of the properties as Kenyans have lost &#8220;trust in what the government does&#8221; regarding housing. Previous wasteful spending on expensive capital projects, doesn&#8217;t help matters as well, the government official added. Hinga was referring to the National Youth Service scandal I and II, where civil servants, including the Director General of National Youth Service, and other private sector officials were arrested for <a href="https://www.bbc.com/news/world-africa-44280453">fraudulent</a> activities that led to the looting of $78 million from government coffers.</p>
<p>Kenya is one of Africa’s leading countries regarding blockchain and cryptocurrency development. Some of the region’s largest blockchain remittances originated from Kenya. Last month, the <a href="https://www.ccn.com/kenyas-blockchain-task-force-advises-govt-to-replace-cash-with-digital-currency/">chairman</a> of the Distributed Ledgers and Artificial Intelligence task force Bitange Ndemo advised the government to tokenize the economy in a bid to tackle corruption and uncertainty in the country.</p>
<p>“We must begin to tokenize the economy by giving incentives to young people to do things which they are paid through tokens that can be converted to Fiat currency,” Ndemo had stated at the time.</p>
<p>Active legislative discussions over blockchain and cryptocurrency related programs show the interest that the Kenyan government has in blockchain technology. This is evident in the government’s effort towards finding proper regulatory frameworks for the technology over time. In August 2018, the country’s electoral <a href="https://www.ccn.com/kenyas-electoral-commission-to-adopt-blockchain-for-enhanced-vote-integrity/">commision</a> even showed signs of adopting blockchain technology in voting processes.</p>
<p>Speaking to the BBC in May, Information Minister Joseph Mucheru <a href="https://www.bbc.com/news/world-africa-43640885">confirmed</a> that the country is looking into deploying blockchain technology in the country’s land registry.</p>
<p>Under the framework, Kenya’s notoriously porous land registry database will be recorded on a blockchain, effectively making it impervious to fraudulent changes that corrupt officials currently effect in exchange for a bribe.</p>',
  '<a href="https://www.ccn.com/kenyan-government-to-use-blockchain-to-distribute-affordable-housing/" target="_blank">BLOCKCHAIN NEWS</a>', TRUE, 33, '2018-10-16 13:36:38'),
  (3,  'Kenya Drafts Law to Protect Consumer Data', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325987/data_megrhd.jpg',
   'Kenya is setting up a National Integrated Identity Management System to centralise citizens’ data.',
  '<p>Kenya’s ICT Ministry has drafted a Bill to create safeguards for data held by companies and government agencies in the midst of growing concerns about the safety of personal data.</p></div><div><p>The Kenya Data Protection Bill 2018 lays down rules on how personal information can be collected, used, shared and stored by data handlers, and prescribes a fine of $50,000 or a five-year jail term for those who contravene the provisions.</p>
  <p>Data controllers will have to seek an individual’s consent before collecting, processing, sharing or storing their data, and inform them about the cost, intended purpose, extent and period of use. </p>
  <p>“A data controller or data processor shall bear the burden of proof for establishing a data subject’s consent to the processing of his personal data for a specified purpose,” the draft states.</p>
<p>Common elements of modern data protection and privacy laws such as liability of data controllers and endorses the right to correction or to be forgotten, allowing individuals to demand correction or deletion of their data by an agency, are included in the draft.</p>
  <p>Rafe Mazer, regulation lead at FSD Kenya, said the Bill is comprehensive and favours the consumer. “If approved, it will ensure proper data protection in Kenya,” he said.</p>',
  '<a href="https://www.theeastafrican.co.ke/news/ea/Kenya-drafts-law-to-protect-consumer-data/4552908-4718632-6yhhd3z/index.html" target="_blank">The East African</a>', TRUE, 33, '2018-08-14 15:36:38'),
  (4,  'Nopia Ride Electric Cab Commences Operations In Nairobi', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325988/nopia-electric-car_jdkcmj.jpg',
   'The use of electric cars allows the company to charge less, pay the drivers more and protect the environment.',
  '<p> Juha Suojanen is the CEO and founder of Ekorent which initially started as an electric car rental app in Helsinki. He’s in Nairobi promoting the firm’s new ride sharing company, Nopia Ride. Hailed as an ‘eco-Uber’, the service wants to break into the city’s competitive taxi market by offering zero-emission rides at lower rates.</p>
  <p>“It’s important to shift away from a transport model dependent on fossil fuels and personal cars,” says Ariadne Baskin of the Electric Mobility Unit. “Nopia Ride is helping do that, combining both shared transport and electric mobility. Scaled up, this reduces the number of vehicles on the road, relieves congestion, and cuts back on energy use and emissions.”</p>
  <p>Explaining why a Finnish company chose Nairobi for its first international expansion, Suojanen says, “The city is growing really fast with huge transportation and congestion problems that cause more issues with emissions. So, it was a clear choice. Growth potential in Finland is quite limited. We saw that there’s a big business opportunity while also an opportunity to do some good for the environment by going to bigger cities outside of Europe.”</p>
<p>The use of electric cars allows the company to charge less, pay the drivers more and protect the environment. According to Suojanen, this win-win model will ensure that the company becomes truly competitive in the market once they start to grow.</p>
  <p>“If you talk to any taxi driver they hate Uber, because it makes 12-hour work days. What is unique about our business model is that the drivers don’t pay for gasoline, so they’ll make 30 – 50 per cent more than with Uber or Taxify. So, we can ensure low prices for the passengers but also that the drivers are making a living,” said Suojanen. While Nopia Ride has only had a foothold in Africa since August of 2018, the company is now in the scaling up phase, building new charging stations and setting a goal of having 1,500 vehicles on the road by the end of 2021. Looking towards the future, Suojanaen is confident, “If we can prove the model here, then we can continue to expand outside Nairobi. We’re not stopping here. We want to go everywhere in Africa.”</p>',
  '<a href="https://kenyanwallstreet.com/nopia-ride-car-electric-commences-operations-in-nairobi/" target="_blank">The East African</a>', TRUE, 2, '2018-11-23 15:36:38'),
  (5,  'Big win for Kenya as Chinese private investors line up for public partnerships', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325987/china-africa-summit-2018_lcnjom.jpg',
   'The leaders discussed construction of Phase 2B of the Standard Gauge Railway covering the section from Naivasha to Kisumu.',
  '<p>The major deals that Chinese private investors want to put their money into include several critical infrastructural projects including a 30-kilometre expressway running from JKIA across the city to Westlands, and for development of the Dongo Kundu industrial Special Economic Zone in Mombasa.</p>
  <p>Two major roads in North Eastern will also be constructed through the public private investments. The two roads, Modogashe-Habaswein-Samatar and Elwak-Rhamu road will cost Sh15 billion and will be constructed through partnership involving Chinese private companies under the Kenya government’s roads annuity program.</p>
  <p>The new partnerships are seen as a quick result of Kenya’s desire to shift away from pure debt financing with new emphasis being placed on Public Private Partnerships and the need to explore innovative off-balance sheet financing for the country’s infrastructure needs.</p>
<p>The revelations came on a day that President Uhuru Kenyatta and his Chinese counterpart, President Xi Jinping witnessed signing of more deals between Kenya and China.</p>
  <p>The agreements were signed at the Great Hall of the People where the two leaders held bilateral talks focusing on strengthening the comprehensive and strategic partnership existing between Kenya and China.</p>',
  '<a href="https://www.capitalfm.co.ke/news/2018/09/big-win-for-kenya-as-chinese-private-investors-line-up-for-public-partnerships/" target="_blank">Capital News</a>', TRUE, 2, '2018-09-04 15:36:38'),
  (6,  'Nairobi makes UN list of 4 top investment cities in Africa', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543327254/UN-Report-on-FDI-in-Africa_870x331px_2_cnrdob.jpg',
   'Kenya’s FDI rose 71 per cent to Sh67 billion ($672 million) last year, according to UN Conference on Trade and Development (Unctad).',
  '<p>Nairobi is one of the four cities the United Nations has identified among top four African markets that attract highest foreign capital inflows, crucial to creating wealth.The UN-Habitat, in a report, says East Africa, led by Kenya’s capital, is set to record a sustained growth in foreign direct investment (FDI) in coming years.</p>
  <p>“The four major FDI centres in Africa are identified as Cairo, Lagos, Johannesburg and Nairobi and the report suggests both West and East Africa are likely to experience sustained investment growth, primarily in manufacturing,” the UN says in its State of African Cities 2018 report.</p>
  <p>If guided well, the study suggests, the flow of foreign capital could cut the high levels of urban poverty and unemployment.Foreign investments also hold the key to graduating the country from agriculture-based, primary economy to one led by manufacturing and knowledge-based industries, the UN says.</p>
<p>The global agency championed development of infrastructure, including air, land and sea links, as a way of improving accessibility, urban mobility and opening up local markets.“A skilled workforce is becoming more important than low wages, and good governance and regional integration are also key elements,” it reads.</p>
  <p>Kenya’s rise inflow of foreign investors’ cash contrasted starkly with a 22 per cent drop in FDI in Africa as a whole and a 23 per cent fall-off globally. In addition to capital inflows, foreign investments result in technology transfers and skills exchange among the local population. Several multinationals last year pumped in new capital into expanding their operations in Kenya, including South Africa''s Naspers, MTN and Intact Software. UK’s alcohol brewer Diageo further boosted FDI in Kenya’s consumer sector. Others were Boeing, Microsoft, Oracle, and Johnson & Johnson.</p>',
  '<a href="https://www.businessdailyafrica.com/news/Nairobi-makes-UN-list-of-4-top-investment-cities-in-Africa/539546-4631038-jnlr3hz/index.html" target="_blank">The East African</a>', TRUE, 2, '2018-04-14 15:36:38'),
  (7,  'Kenya foreign investment inflows in 2017 soar 71pc defying Africa slump', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325987/fdi_ny3kxf.jpg',
   'Africa itself is expected to reverse last year''s negative FDI trend, Unctad said.',
  '<p>Foreign direct investment (FDI) in Kenya soared to $672 million (Sh67.7 billion) last year, a United Nations agency reported on Wednesday. That robust 71 per cent increase contrasted starkly with a 22 per cent drop in FDI in Africa as a whole and a 23 per cent fall-off globally.</p>
  <p>Kenya''s strong performance was due mainly to “buoyant domestic demand and inflows into ICT industries,” the UN Conference on Trade and Development said, referring to information and communication technology.</p>
  <p>The outlook for the current year is also positive for Kenya, Unctad suggested. The UN agency pointed to completion of the Mombasa-Nairobi section of the standard-gauge railway as one of the major infrastructure projects in Africa that is likely to boost economic growth and generate additional FDI flows in 2018.</p>
<p>ICT cabinet secretary Joe Mucheru led the country’s campaigns for the coveted seat at the council. Kenya joined the ITU Council in 1982 when it hosted the ITU Plenipotentiary Conference and has remained a member since then.</p>
  <p>Ethiopia remains a magnet for foreign investment in East Africa despite a 10 per cent decline last year. It absorbed nearly half the $7.6 billion invested in East Africa in 2017, making Ethiopia the second-biggest recipient of FDI in Africa after Egypt. The $3.6 billion in foreign investment that poured into Ethiopia last year far surpassed the $672 million attracted by Kenya.</p>',
  '<a href="https://www.businessdailyafrica.com/markets/marketnews/Kenya-foreign-inflows-soar-to-Sh68bn-amid-Africa-slump/3815534-4600436-ou1uoc/index.html" target="_blank">The Business Daily</a>', TRUE, 2, '2018-06-07 20:36:38'),
  (8,  'Kenya’s BitPesa Partners with Japan’s Insurance Company, Sompo Holdings', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325987/bitpesa_yq13h4.jpg',
   'A statement issued by Sompo noted that it intends to apply BitPesa technology in the insurance field.',
  '<p>BitPesa has partnered with Sompo Holdings, a leading Japanese insurer, to enable cross-border payments across its platform.This comes at a time when Sompo has acquired a 10 percent stake in the digital foreign exchange platform.A statement issued by Sompo noted that it intends to apply BitPesa techonology in the insurance field.</p>
  <p>“Using BitPesa’s technology, developed through various experiments in remittances and settlements, we will extend our presence in the international remittance service market,” read the statement.On her part, BitPesa’s chief executive Elizabeth Rossielo said that she welcomes partnership with the global underwriter, as it will give customers the ability to transact between different currencies with ease.</p>
  <p>“Sompo Holdings is one of the largest Japanese insurance companies and they are looking for new markets and opportunities. We can give them immediate access to these markets. For all the financial services they offer, we can provide all the cross-currency transactions to remove any currency risk,” she said.</p>
<p>Recently, BitPesa partnered with Japan’s remittance service, SBI Remit, to enable cross border payments between Japan and Africa.</p>
  <p>BitPesa offers supplier payments across a number of African countries including Kenya, Nigeria, Tanzania, Uganda, Ghana, Senegal, and the Democratic Republic of Congo.</p>',
  '<a href="https://kenyanwallstreet.com/kenyas-bitpesa-partners-with-japans-insurance-company-sompo-holdings/" target="_blank">The Kenyan Wall Street</a>', TRUE, 2, '2018-11-27 15:36:38'),
  (7,  'Six Kenyan Startups In The Frontline To Win Ksh7.1M Innovation Prize', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325989/APEI-2019-page-960x570_at59gq.png',
   'Six Kenyan startups shortlisted for 2019 Africa Prize for Engineering Innovatio',
  '<p>Six Kenyan startups have been shortlisted for the 2019 Africa Prize for Engineering Innovation, which offers total prize funding of Ksh7.1 Million to the most promising entrepreneurial engineers.</p>
  <p>APEI was founded by the UK Royal Academy of Engineering to develop the entrepreneurial skills of engineers by providing support; this includes funding, business training, mentoring and access to the academy’s network of engineers.</p>
  <p>After a four-month training and mentor ship, four finalist will be selected to present their businesses to judges in front of a live audience in Kampala, Uganda.The winner will be awarded Ksh3.2 million, and three runners up will be awarded Ksh3.2 million each.</p>
<p>“The shortlist has come to represent the most talented engineers on the continent. Through the Africa Prize, we’ve seen cutting edge technologies and world-firsts develop into businesses that manufacture locally, and drive research and development on the continent. We can’t wait to meet the new group of engineering pioneers, ”said judge Rebecca Enonchong.</p>
  <p>Four of the companies shortlisted hail from Nigeria. They are industrial food dryer 3-D-3-P, currency exchange platform Kaoshi, e-health company WellNewMe, and ed-tech app Zenafri.South Africa has two representatives, Pelebox Smart Lockers and the Hybrid five-axis machine tool. Uganda is represented by two companies, Smart Havens Africa and the Vertical Farm, while Zambia and Burkina Faso have Baby Delivery Kits and SolarKoodo respectively.</p>',
  '<a href="https://kenyanwallstreet.com/six-kenyan-startups-in-the-frontline-to-win-ksh7-1m-innovation-prize/" target="_blank">The Kenyan Wall Street</a>', TRUE, 2, '2018-11-23 15:36:38'),
  (10,  'Nairobi International Financial Centre Takes Shape as Government opens Bids for Key Consultants', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1543325987/national-treasury_vbbwgs.jpg',
   'The Nairobi International Financial Centre has started to take shape following the invitation of bidders for key consultants set to steer the creation of the regional financial hub.',
  '<p> Through a tender notice released by the national treasury, the NIFC Authority has invited Request for Proposals from interested consultants to carry out a gap analysis for Kenya’s financial services sector and develop regulations on NIFC activities and incentives. </p>
  <p>The consultants will also cover interviews with financial services sector stakeholders to understand why the industry is not operating at its optimal capacity, identify strategic activities which should be undertaken at the NIFC and the appropriate incentives thereon.</p>
  <p>In addition, they will be required to interview public sector players (such as government, judiciary, financial services sector regulators and other relevant stakeholders) on actions that can be taken to enhance efficiency of the business and regulatory environment.</p>
<p>The NIFC is an operating framework managed by the NIFCA which is meant to facilitate and support the development of an efficient and competitive financial sector in Kenya.</p>
  <p>Vision 2030 envisages the NIFC as a catalyst for Kenya to gain a stronger presence in sub-Saharan Africa’s growing financial services market.Interested bidders have up to 27 November 2018 to submit their completed RFP documents in the tender box provided at the Treasury building.</p>',
  '<a href="https://kenyanwallstreet.com/nairobi-international-financial-centre-takes-shape-as-government-opens-bids-for-key-consultants/" target="_blank">The Kenyan Wall Street</a>', TRUE, 2, '2018-11-03 15:36:38'),
  (9, 'High Commisison Welcomes New High Commissioner', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/ar_1:1,c_fill,g_auto,e_art:hokusai/v1550164314/balozi_arrival_feb_2019_xcjbpq.jpg',
   'Kenya’s newly appointed High Commissioner arrives in Kuala Lumpur',
  '<p> Kenya’s High Commissioner designate to Malaysia H.E Francis Ndewgwa Muhoro arrived on 12th Feb in Kuala Lumpur. </p>
  <p>Muhoro was received at KLIA by Malaysia government officials and the Embassy staff.</p>',
  '<a href="http://www.kenyahighcom.org.my/article/11" target="_blank">Kenya High Commission, KL</a>', TRUE, 33, '2019-02-13 15:36:38');


/*INSERT NAVIGATION_CATEGORIES*/
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (1, 33);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (2, 38);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (3, 33);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (4, 2);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (5, 2);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (6, 12);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (7, 13);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (8, 38);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (9, 38);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (10, 6);
INSERT INTO NAVIGATION_CATEGORIES(NAVIGATION_ID, PAGE_CATEGORY_ID) VALUES (11, 33);

/*INSERT API USER AUTHENTICATION DETAILS*/
INSERT INTO OAUTH_CLIENT_DETAILS(CLIENT_ID, RESOURCE_IDS, CLIENT_SECRET, SCOPE, AUTHORIZED_GRANT_TYPES, AUTHORITIES, ACCESS_TOKEN_VALIDITY, REFRESH_TOKEN_VALIDITY)
	VALUES ('spring-security-oauth2-read-client', 'resource-server-rest-api',
	/*spring-security-oauth2-read-client-password1234*/'$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km',
	'read', 'password,authorization_code,refresh_token,implicit', 'USER', 32400000, 2592000);

	/*validity  10800*/

INSERT INTO OAUTH_CLIENT_DETAILS(CLIENT_ID, RESOURCE_IDS, CLIENT_SECRET, SCOPE, AUTHORIZED_GRANT_TYPES, AUTHORITIES, ACCESS_TOKEN_VALIDITY, REFRESH_TOKEN_VALIDITY)
	VALUES ('spring-security-oauth2-read-write-client', 'resource-server-rest-api',
	/*spring-security-oauth2-read-write-client-password1234*/'$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W',
	'read,write', 'password,authorization_code,refresh_token,implicit', 'USER', 32400000, 2592000);

/*INSERT USER AUTHORITIES*/
INSERT INTO AUTHORITY(ID, NAME) VALUES (1, 'COMPANY_CREATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (2, 'COMPANY_READ');
INSERT INTO AUTHORITY(ID, NAME) VALUES (3, 'COMPANY_UPDATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (4, 'COMPANY_DELETE');

INSERT INTO AUTHORITY(ID, NAME) VALUES (5, 'DEPARTMENT_CREATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (6, 'DEPARTMENT_READ');
INSERT INTO AUTHORITY(ID, NAME) VALUES (7, 'DEPARTMENT_UPDATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (8, 'DEPARTMENT_DELETE');

INSERT INTO AUTHORITY(ID, NAME) VALUES (9, 'ROLE_COMPANY_READER');

/*INSERT USERS*/
INSERT INTO USER_(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (1, 'admin', /*admin1234*/'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USER_(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (2, 'reader', /*reader1234*/'$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSe', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USER_(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (3, 'modifier', /*modifier1234*/'$2a$08$kPjzxewXRGNRiIuL4FtQH.mhMn7ZAFBYKB3ROz.J24IX8vDAcThsG', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USER_(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (4, 'reader2', /*reader1234*/'$2a$08$vVXqh6S8TqfHMs1SlNTu/.J25iUCrpGBpyGExA.9yI.IlDRadR6Ea', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 1);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 3);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 4);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 5);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 6);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 7);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 8);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 9);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 6);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (3, 3);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (3, 7);

INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (4, 9);