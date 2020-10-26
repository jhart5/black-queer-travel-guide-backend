BEGIN;

    DROP TABLE IF EXISTS countries, things_to_do, businesses, experiences
    CASCADE;

CREATE TABLE countries
(
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,
    continent VARCHAR(50)
);

CREATE TABLE things_to_do

(   id SERIAL PRIMARY KEY,
    country_id INTEGER REFERENCES countries(id),
    name VARCHAR(255) NOT NULL,
    details TEXT,
    date_time TEXT,
    location TEXT,
    approved BOOL,
    created_at timestamp NOT NULL DEFAULT NOW()
);

CREATE TABLE businesses
(   id SERIAL PRIMARY KEY,
    country_id INTEGER REFERENCES countries(id),
    name VARCHAR(255) NOT NULL,
    details TEXT,
    location TEXT,
    ownership text[],
    approved BOOL,
    created_at timestamp NOT NULL DEFAULT NOW()
);

CREATE TABLE experiences
(   id SERIAL PRIMARY KEY,
    country_id INTEGER REFERENCES countries(id),
    socials TEXT,
    details TEXT,
    tags text[],
    overall_experience TEXT,
    approved BOOL,
    created_at timestamp NOT NULL DEFAULT NOW()
);

        INSERT INTO countries
            (country_name, continent)
        VALUES
            ('Afghanistan','asia'),
            ('Albania', 'europe'),
            ('Algeria','africa'),
            ('Andorra', 'europe'),
            ('Angola','africa'),
            ('Antigua and Barbuda','caribbean'),
            ('Argentina', 'southamerica'),
            ('Armenia','asia'),
            ('Australia', 'oceania'),
            ('Austria', 'europe'),
            ('Azerbaijan', 'asia'),
            ('Bahamas','caribbean'),
            ('Bahrain','asia'),
            ('Bangladesh','asia'),
            ('Barbados','caribbean'),
            ('Belarus','europe'),
            ('Belgium','europe'),
            ('Belize', 'centralamerica'),
            ('Benin','africa'),
            ('Bhutan','asia'),
            ('Bolivia', 'southamerica'),
            ('Bosnia and Herzegovina', 'europe'),
            ('Botswana','africa'),
            ('Brazil', 'southamerica'),
            ('Brunei','asia'),
            ('Bulgaria','europe'),
            ('Burkina Faso','africa'),
            ('Burundi','africa'),
            ('Cape Verde','africa'),
            ('Cambodia', 'asia'),
            ('Cameroon','africa'),
            ('Canada', 'northamerica'),
            ('Central African Republic','africa'),
            ('Chad','africa'),
            ('Chile', 'southamerica'),
            ('China','asia'),
            ('Colombia', 'southamerica'),
            ('Comoros','africa'),
            ('Costa Rica', 'centralamerica'),
            ('Cote d''Ivoire','africa'),
            ('Croatia','europe'),
            ('Cuba','caribbean'),
            ('Cyprus','asia'),
            ('Czechia','europe'),
            ('Democratic Republic of Congo','africa'),
            ('Denmark','europe'),
            ('Djibouti','africa'),
            ('Dominica','caribbean'),
            ('Dominican Republic','caribbean'),
            ('Ecuador','southamerica'),
            ('Egypt','africa'),
            ('El Salvador','centralamerica'),
            ('Equatorial Guinea','africa'),
            ('Eritrea','africa'),
            ('Estonia','europe'),
            ('Eswatini','africa'),
            ('Ethiopia','africa'),
            ('Fiji', 'oceania'),
            ('Finland','europe'),
            ('France','europe'),
            ('Gabon','africa'),
            ('Gambia','africa'),
            ('Georgia','asia'),
            ('Germany','europe'),
            ('Ghana','africa'),
            ('Greece','europe'),
            ('Grenada','caribbean'),
            ('Guatemala', 'centralamerica'),
            ('Guinea','africa'),
            ('Guinea-Bissau','africa'),
            ('Guyana', 'southamerica'),
            ('Haiti','caribbean'),
            ('Honduras', 'centralamerica'),
            ('Hungary','europe'),
            ('Iceland','europe'),
            ('India','asia'),
            ('Indonesia','asia'),
            ('Iran','asia'),
            ('Iraq','asia'),
            ('Ireland','europe'),
            ('Israel','asia'),
            ('Italy','europe'),
            ('Jamaica','caribbean'),
            ('Japan','asia'),
            ('Jordan','asia'),
            ('Kazakhstan','asia'),
            ('Kenya','africa'),
            ('Kiribati', 'oceania'),
            ('Kosovo', 'europe'),
            ('Kuwait','asia'),
            ('Kyrgyzstan','asia'),
            ('Laos','asia'),
            ('Latvia','europe'),
            ('Lebanon','asia'),
            ('Lesotho','africa'),
            ('Liberia','africa'),
            ('Libya','africa'),
            ('Liechtenstein','europe'),
            ('Lithuania','europe'),
            ('Luxembourg','europe'),
            ('Madagascar','africa'),
            ('Malawi','africa'),
            ('Malaysia','asia'),
            ('Maldives','asia'),
            ('Mali','africa'),
            ('Malta','europe'),
            ('Marshall Islands', 'oceania'),
            ('Mauritania','africa'),
            ('Mauritius','africa'),
            ('Mexico', 'northamerica'),
            ('Micronesia', 'oceania'),
            ('Moldova','europe'),
            ('Monaco','europe'),
            ('Mongolia','asia'),
            ('Montenegro','europe'),
            ('Morocco','africa'),
            ('Mozambique','africa'),
            ('Myanmar','asia'),
            ('Namibia','africa'),
            ('Nauru', 'oceania'),
            ('Nepal','asia'),
            ('Netherlands','europe'),
            ('New Zealand', 'oceania'),
            ('Nicaragua', 'centralamerica'),
            ('Niger','africa'),
            ('Nigeria','africa'),
            ('North Korea','asia'),
            ('North Macedonia', 'europe'),
            ('Norway','europe'),
            ('Oman','asia'),
            ('Pakistan','asia'),
            ('Palau', 'oceania'),
            ('Palestine','asia'),
            ('Panama', 'centralamerica'),
            ('Papua New Guinea','oceania'),
            ('Paraguay','southamerica'),
            ('Peru', 'southamerica'),
            ('Philippines','asia'),
            ('Poland','europe'),
            ('Portugal','europe'),
            ('Qatar','asia'),
            ('Republic of the Congo','africa'),
            ('Romania','europe'),
            ('Russia','asia'),
            ('Rwanda','africa'),
            ('Saint Kitts and Nevis','caribbean'),
            ('Saint Lucia','caribbean'),
            ('Saint Vincent and the Grenadines','caribbean'),
            ('Samoa', 'oceania'),
            ('San Marino','europe'),
            ('Sao Tome and Principe','africa'),
            ('Saudi Arabia','asia'),
            ('Senegal','africa'),
            ('Serbia','europe'),
            ('Seychelles','africa'),
            ('Sierra Leone','africa'),
            ('Singapore','asia'),
            ('Slovakia','europe'),
            ('Slovenia','europe'),
            ('Solomon Islands', 'oceania'),
            ('Somalia','africa'),
            ('South Africa','africa'),
            ('South Korea','asia'),
            ('South Sudan','africa'),
            ('Spain','europe'),
            ('Sri Lanka','asia'),
            ('Sudan','africa'),
            ('Suriname','southamerica'),
            ('Sweden','europe'),
            ('Switzerland','europe'),
            ('Syria','asia'),
            ('Taiwan','asia'),
            ('Tajikistan','asia'),
            ('Tanzania','africa'),
            ('Thailand','asia'),
            ('Timor-Leste','asia'),
            ('Togo','africa'),
            ('Tonga', 'oceania'),
            ('Trinidad and Tobago','caribbean'),
            ('Tunisia','africa'),
            ('Turkey','asia'),
            ('Turkmenistan','asia'),
            ('Tuvalu', 'oceania'),
            ('Uganda','africa'),
            ('Ukraine','europe'),
            ('United Arab Emirates','asia'),
            ('United Kingdom','europe'),
            ('United States of America','northamerica'),
            ('Uruguay','southamerica'),
            ('Uzbekistan','asia'),
            ('Vanuatu','oceania'),
            ('Vatican City', 'europe'),
            ('Venezuela','southamerica'),
            ('Vietnam','asia'),
            ('Yemen','asia'),
            ('Zambia','africa'),
            ('Zimbabwe','africa');


COMMIT;
