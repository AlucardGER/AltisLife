waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Grundregeln"];
player createDiarySubject ["policerules","Bussgeldkatalog"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					Die Changelogs koennen auf unserer Homepage angesehen werden.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Allgmeines", 
				"
				Hacken, Cheaten und jede Art von Spielmanipulation (Bugusing) sind strengstens Verboten.<br/><br/>

				1. Kein Voice/Chat Spam auf dem Server.<br/>
				2. Deutsch und Englisch sind Server Sprachen im Global/Side Channel.<br/>
				3. Adminentscheidungen werden nicht diskutiert. Nur einmaliges Nachfragen ist erlaubt.<br/>
				4. Kein Werben fuer andere Server und Clans/Communities auf unserem Server!<br/>
				5. Die Missachtung einer Regel, fuehrt zum Kick, bei wiederholtem Verstoss zu einem Bann.<br/>
				6. Das Stoeren durch unrealistische und unnoetige Aktionen ist untersagt.<br/>
				7. Das Umloggen um schnell von einer Stadt zur anderen zu gelangen ist Verboten.<br/>
				8. Das Ausnutzen der Moeglichkeiten dem Rollenspiel zu entgehen ist Verboten.<br/>
				9. Handelt realistisch bzw. nachvollziehbar.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					Folgende sind Safezones und jegliche kriminelle Handlung kann zum Bann fuehren!<br/><br/>
					
					Jeder Fahrzeugspawn (shop oder garage)<br/>
					Jeder Waffenshop<br/>
					Alle Polizei HQ's<br/>
					Rebel Outposts<br/>
					Donator Shops<br/>
					Kavalla Marktplatz<br/></br>
				"
		]
	];
					

	
	player createDiaryRecord ["serverrules",
		[
			"Luftfahrt", 
				"
				Regeln fuer die Luftfahrt. Verstoss kann von Bussgeld zu Inhaftierung fuehren!<br/><br/>
				
				1. Ueber Staedten sollte ein Hovern vermieden werden wegen der Laermbelaestigung.<br/>
				2. Wenn man in der Stadt landen moechte, muss man erst eine Landeerlaubnis von der Polizei einholen.<br/>
				3. Helikopter duerfen innerhalb von Staedten nur in den dafuer vorgesehenen Landeplaetzen (weisse Markierung) landen oder auf Sportplaetzen.<br/>
				4. Fuer die Polizei gelten diese Regeln nicht im Einsatz.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Geschwindigkeitsbegrenzungen", 
				"
				Folgenden Geschwindigkeiten ist folge zu leisten.<br/><br/>
				
				1. Innerorts: 50 km/h<<br/>
				2. Ausserorts: 120 km/h<br/>
				3. Vor und innerhalb Checkpoints bzw Safezones: 30 km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Diese Fahrzeuge sind illegal.<br/><br/>
				
				1. Alle bewaffneten Fahrzeuge der Rebellen sind illegal.<br/>
				2. Geklaute Fahrzeuge sind illegal.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				RDM kann zum Ban fuehren!<br/><br/>
				
				1. Das Umbringen von anderen Spielern sollte immer die letzte Moeglichkeit sein<br/>
				2. Ein Rollenspielhintergrund muss gegeben sein<br/>
				3. Einen Spieler zu toeten, ohne ihm eine angemessene Zeitspanne zum Reagieren und Befolgen von Anweisungen zu geben ist RDM<br/>
				4. Administratoren haben das Recht diese Regeln je nach Fall in eigenem Ermessen zu bewerten.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Regeln fuer den Tod und das neue Leben", 
				"
				Die New Life Rule ist vertreten bei Zivillisten , Rebellen und Polizisten! <br/><br/>

				1. Nach dem Tod startest du mit einem neuen Charakter<br/>
				2. Alle Straftaten sind erloschen (Gilt nicht bei Suizid oder Disconnect)<br/>
				3. Du darfst keine Rache nehmen<br/>
				4. Du darfst nicht an den Ort deines Todes zurueck fuer mindestens 20 Minuten<br/>
				5. Sollten nach den 20 Minuten immer noch Kampfhandlungen stattfinden musst du warten bis diese vorbei sind. Du darfst auf keinen Fall eingreifen oder an diesem Ort spawnen.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Rebellen", 
				"
				Rebellen leisten bewaffneten Widerstand gegen die Polizei.<br/>
				Die Anzahl der Polizisten, verglichen mit der moeglichen Anzahl der Rebellen, ein Grund um die Polizei nicht immer gleich zu erschiessen.<br/>
				Widerstand bedeutet nicht wahlloses Toeten von Zivilisten oder Polizisten.<br/>
				Jeder Angriff muss einen ANGEMESSENEN Grund haben.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Verstoesse im Strassenverkehr",
				"
				Geschwindigkeitsueberschreitung Innerorts ueber 60 km/h     300,-<br/>
				Geschwindigkeitsueberschreitung Ausserorts ueber 100 km/h    400,-<br/>
				Fahren ohne Licht (Nachts)                    300,-<br/>
				Fahren auf der falschen Strassensetite                 450,-<br/>
				Unnoetiges Offroadfahren                    450,-<br/>
				Fahrerflucht                            1.500,-<br/>
				Unfallverursacher / Behinderung des Verkehrs            400,-<br/>
				Verursachen eines Personenschadens                 4.000,-<br/>
				Bei Wiederholung Inhaftierung <br/>
				Falschparken                           1.000,-<br/>
				Fahren ohne Lizenz                        10.000,-<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Verstoesse im Flugverkehr",
				"
				Schweben ueber Staedten unter 200 Meter            15.000,-<br/>
				Landen in bewohntern Gebieten                 20.000,-<br/>
				Landen in Sperrzonen                         50.000,-<br/>
				Fliegen ohne Kollisionsleuchten                    20.000,-<br/>
				Landen auf Strassen                        20.000,-<br/>
				Fliegen ohne Lizenz                        100.000,-<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Verstoesse im Umgang mit Waffen",
				"
				Waffe sichtbar tragen innerorts                     5.000,-<br/>
				Waffe abfeuern innerorts                    10.000,- + Beschlagnahmung der Waffe<br/>
				Verursachter Personenschaden mit einer Waffe            Inhaftierung<br/>
				Besitz illegaler Waffen ausserhalb der Rebellenzone        50.000,- + Beschlagnahmung der Waffe<br/>
				Offenes Tragen einer illegalen Waffe                500.000,- + Inhaftierung<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Verstoesse im Umgang mit Polizeibeamten", 
				"
				Behinderung der Polizei (einmalig)                5.000,-<br/>
				Behinderung der Polizei (mehrfach)                10.000,- + Ingewahrsamnahme bis Beendigung des Einsatzes<br/>
				Beleidigung gegenueber Polizei    (einmalig)            5.000,-<br/>
				Beleidigung gegenueber Polizei (mehrfach)            5.000,- + Inhaftierung<br/>
				Befreien von festgesetzten Personen (einmalig)            10.000,- + Inhaftierung<br/>
				Befreien von festgesetzten Personen (mehrfach)        Erlaubnis zur Waffengewalt durch den Beamten + Inhaftierung<br/>
				Inspizierung der Ausruestung/Fahrzeug der Beamten        5.000,-<br/>
				Verweigerung von Befehlen der Beamten            3.000,-<br/>
				Diebstahl Polizeiauto                        100.000,-<br/>
				Diebstahl Polizeihelikopter                    250.000,-<br/>
				Betreten eines Sperrgebiets oder des Polizei HQ            15.000,-<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Stoerung der oeffentlichen Ordnung und Sicherheit", 
				"
				Beleidigung anderer Spieler                     1.000,- - 10.000,- je nach Ermessen + 5 Minuten in der Ecke<br/> 
				Lockpicking (versuchter Fahrzeug Diebstahl)            3.000,-<br/>
				Lockpicking + Fahrzeugdiebstahl                10.000,- + Inhaftierung<br/>
				Raubueberfall                            Inhaftierung<br/>
				Mord                                Inhaftierung<br/>
				Bankueberfall                            Inhaftierung + Strafgeld bzw Tod durch scharfe Munition<br/>
				Checkpoint Missachtung                    20.000,- + Erlaubnis der Nutzung scharfer Munition durch den Beamten<br/>
				Diebstahl aus Rucksack                        5.000,-<br/>
				Drogenschmuggel/Handel                    Inhaftierung + Fahrzeug Beschlagnahmung <br/>
				Schmuggel von Tieren                        Inhaftierung + Fahrzeug Beschlagnahmung <br/>
				Befreiung Inhaftierter                        250.000,- + Inhaftierung  <br/>
				Gefaengnisausbruch                        300.000,- + Inhaftierung<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Trollen", 
				"
				Trollen der Polizei (einmalig)                    Verwarnung<br/>
				Trollen der Polizei (mehrfach)                    Meldung bei den Admins + 24h Bann<br/>
				Erneuter Verstoss                        Dauerhafter Bann<br/><br/>
				
				Bei mehreren Verstoessen Addierung des Bussgeldes in allen Bereichen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kriminelle Handlungen", 
				"
				Raub<br/>
				Diebstahl<br/>
				Erpressung<br/>
				Geiselnahme<br/>	
				Mord<br/>
				Das mitfuehren von Meth, Kokain, Marihuana, Heroin und Schildkroeten.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Verhalten in Staedten", 
				"
				Erlaubte Waffen muessen in Staedten in Rucksaecken getragen werden.<br/>
				Ausserhalb von Staedten ist es erlaubt sie gesenkt in der Hand zu halten.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Beschlagnahmung von Fahrzeugen", 
				"
				Fahrzeuge die ordnungsgemaess oder auf einem Parkplatz geparkt sind duerfen nicht beschlagnahmt werden.<br/>
				Fahrzeuge, die verlassen und/oder kaputt aussehen koennen beschlagnahmt werden.<br/>
				Boote muessen am Ufer geparkt werden.<br/>
				Jedes Fahrzeug was ueber einen laengeren Zeitraum nicht bewegt wurde, darf beschlagnahmt werden.<br/>
				Beschlagnahmungen dienen der Serverperformance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Waffen",
				"
				Waffen sind generell illegal. Die einzige Ausnahme ist, man besitzt einen gueltigen Waffenschein und traegt eine der folgenden Waffen:<br/><br/>
				P07<br/>
				Rook<br/>
				SDAR<br/>
				PDW<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["serverrules",
		[
			"Befehlskette(Polizei)", 
				"
				Der ranghoechste Offizier ist fuer die Koordination der Polizei zustaendig.<br/>
				Hochrangige Offiziere haben bei polizeilichen Aktionen das volle Kommando.<br/>
				Rekruten haben unbedingt der Befehlskette folge zu leisten und keine Einwaende zu aeussern.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Sondereinsatzzonen(Polizei)",
				"
				Sondereinsatzzonen koennen vom Ranghoechsten Polizisten eingerichtet werden.<br/>
				Sie muessen mindestens 5 Minuten vorher von der Polizei bekannt gegeben werden.<br/>
				Alle Zivilisten im Gebiet duerfen festgenommen und durchsucht werden. Falls nichts Illegales gefunden wird muessen sie laufen gelassen werden<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Bussgeld und Inhaftierung",
				"
				Alle kriminellen Handlungen bis auf das absichtliche Toeten haben nur ein Bussgeld zur Folge.<br/>
				Kann oder will die Person dieses Bussgeld nicht bezahlen kann sie inhaftiert werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vertraege(Polizei)",
				"
				Hochrangige Beamte duerfen Informanten, Spionagegruppierungen oder andere Leute kontaktieren und einstellen und fuer die Hilfe bei polizeilichen Einsaetzen/Operationen oder fuer das Dienen als Wachmann bezahlen.<br/>
				Vertraege bleiben aufrecht, bis der zustaendige Beamte den Vertrag beendet.<br/>
				Vertraege bestehen nach dem Tod des Anbieters oder des Ausfuehrenden weiter, ausser der Vertrag wurde davor annulliert.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Spezieller Vertrag(Polizei)",
				"
				Der hoechste Offizier kann Altis Bewohnern das Mitfuehren von illegalen Waffen erlauben, um sie ihm Rahmen eines Vertrags einzusetzen.<br/>
				Die Hochrangigen Beamten muessen eine Bezahlung festlegen, von welcher die Haelfte als Vorschuss gezahlt wird.<br/>
				Das Feuern eines Angestellten, der die Gesetze und Vertragsregeln befolgt hat, ohne ihn bezahlt zu haben, hat eine Degradierung des Beamten zur Folge.<br/>
				Jeder Beauftragte, der die Vertragsregeln bricht, gilt als gesucht und darf festgenommen werden. Falls dieser/diese sich wehrt ist der Einsatz von scharfer Munition erlaubt.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Bankueberfall",
				"
				Wenn die Bank ueberfallen wird muessen alle verfuegbaren Sondereinsatzkraefte einschreiten um den ueberfall zu stoppen.<br/>
				Rekruten oder Patrol Officer muessen nicht zwingend teilnehmen.<br/>
				Belanglose Verbrechen koennen aufgrund des ueberfalls ignoriert werden.<br/>
				Wegen der aktuellen Spielmechanik darf toedliche Gewalt gegen die Raeuber verwendet werden.<br/>
				Jeder Zivilist, der versucht die Polizei zu blockieren oder die Raeuber zu assistieren, darf festgenommen werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vorgehen bei Durchsuchungen ohne offensichtliche kriminelle Handlungen (Polizei)",
				"
				Fragt als erstes ob die Person eine Waffe bei sich hat.<br/>
				Fragt IMMER die Person ob sie eine Durchsuchung der Person oder des Fahrzeuges erlauben. Auf keinen Fall vorher damit beginnen.<br/>
				Falls der Zivilist dies verneint muss geklaert werden ob ein ausreichender Verdacht besteht, falls ihr euch nicht sicher seit fragt bitte beim Ranghoechsten Offizier nach.<br/>
				Ausreichender Verdacht  ist immer gegeben wenn die Person gesucht wird, sich im Umkreis von 1.000 Metern von illegalen Gebieten befindet,  oder eine Waffe mit sich fuehrt.<br/>
				Vorgehen bei Durchsuchungen nach offensichtlichen kriminellen Handlungen.<br/>
				Die Polizei darf Personen Tasern, verhaften und durchsuchen die den Anweisungen nicht in einer angemessenen Zeit folge Leisten.<br/>
				Die Anwendung von toedlicher Gewalt ist erst zulaessig wenn das Leben des Polizisten bedroht wurde.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Checkpoints(Polizei)",
				"
				Die Cops koennen zusaetzliche Checkpoints einrichten und als strategische Anlaufpunkte nutzen, um effizient in Gefechten vorzugehen und die Sicherheit auf den Strassen zu foerdern.<br/>
				Ein Checkpoint muss aus min. 3 Polizisten und 2 Fahrzeugen bestehen.<br/>
				Ein Checkpoint kann nicht unterhalb von 2000 Metern von einem illegalen Gebiet aufgestellt werden.<br/>
				Checkpoints koennen nur auf Strassen eingerichtet werden.<br/>
				Checkpoints muessen nicht auf der Karte markiert werden, oder angekuendigt werden.<br/>
				Die Regeln fuer das neue Leben finden auch hier Anwendung.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Rebellion",
				"
				Rebellen duerfen eine Stadt oder ein Gebiet deklarieren in dem eine Rebellion stattfindet.<br/>
				Die Polizei muss 10 Minuten vorher darueber informiert werden.<br/>
				Die Polizei muss regelmaessig Warnungen ausgeben das dieses Gebiet von unbeteiligten gemieden werden soll.<br/>
				Waehrend einer Rebellion kann auch von der Polizei aus scharf geschossen werden.<br/>
				Jeder der sich waehrend der Zeit der Rebellion in der Stadt befindet sollte sich bewusst sein das er getoetet werden kann.<br/>
				Die Regeln fuer das neue Leben gelten auch waehrend einer Rebellion.<br/>
				Die Rebellion ist beendet wenn die Polizei entweder das Gebiet fuer befriedet oder fuer verloren erklaert. Die Entscheidung sollte aber zeitnah passieren.<br/>
				Sollte die Polizei das Gebiet fuer verloren erklaeren, darf bis zum Restart kein Polizist in diese Stadt.<br/><br/>
				"
		]
	];
	