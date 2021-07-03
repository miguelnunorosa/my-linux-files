#!/bin/sh

# language selection
# based on https://unix.stackexchange.com/questions/43976/list-all-valid-kbd-layouts-variants-and-toggle-options-to-use-with-setxkbmap
# rev. 2021-03-07

DIA_KBD_LANG="pt  Portugal
	br  Brazil
	ca  Canada
	us  USA
	gb  United_Kingdom"
	
DIA_KBD_VAR_us="chr            	us_Cherokee
	euro           	us_EuroSign
	intl           	us_international_deadkeys
	alt-intl       	us_international_alternative
	colemak        	us_Colemak
	mac            	us_Macintosh
	altgr-intl     	us_international_AltGr
	olpc2          	us_GroupToggle(divide)"

DIA_KBD_VAR_ara="qwerty         ara_qwerty
	azerty_digits  ara_azerty/digits
	digits         ara_digits
	azerty         ara_azerty
	qwerty_digits  ara_qwerty/digits
	buckwalter     ara_Buckwalter"

DIA_KBD_VAR_by="legacy         by_Legacy
	latin          by_Latin"

DIA_KBD_VAR_br="nodeadkeys     br_nodeadkeys
	dvorak         br_Dvorak
	nativo         br_Nativo
	nativo-us      br_Nativo_USA
	nativo-epo     br_Nativo_Esperanto"

DIA_KBD_VAR_nl="mac            nl_Macintosh
	std            nl_Standard"

DIA_KBD_VAR_ee="nodeadkeys     ee_nodeadkeys
	dvorak         ee_Dvorak
	us             ee_US"

DIA_KBD_VAR_mt="us             mt_US"

DIA_KBD_VAR_pt="nodeadkeys     	pt_nodeadkeys
	mac            	pt_Macintosh
	mac_nodeadkeys 	pt_Macintosh_nodeadkeys
	nativo         	pt_Nativo
	nativo-us      	pt_Nativo_USA
	nativo-epo     	pt_Nativo_Esperanto"

DIA_KBD_VAR_ro="cedilla        ro_Cedilla
	std            ro_Standard
	std_cedilla    ro_Standard_Cedilla
	winkeys        ro_Winkeys
	crh_f          ro_CrimeanTatar_F
	crh_alt        ro_CrimeanTatar_AltQ
	crh_dobruca1   ro_CrimeanTatar_Dobruca1
	crh_dobruca2   ro_CrimeanTatar_Dobruca2"

DIA_KBD_VAR_gb="extd           gb_Winkeys
	intl           gb_International_deadkeys
	dvorak         gb_Dvorak
	dvorakukp      gb_Dvorak_UK
	mac            gb_Macintosh
	colemak        gb_Colemak"

DIA_KBD_VAR_ml="fr-oss         ml_Francais
	us-mac         ml_English_Macintosh
	us-intl        ml_English_International"
