create TABLE palabras(
	id mediumint NOT NULL auto_increment,
	espanol char(255) NOT NULL,
    japones char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY(id)
);

