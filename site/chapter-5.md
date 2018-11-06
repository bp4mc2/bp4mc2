# Werkwijze
De werkwijze bij BP4mc2 bestaat grofweg uit vier fasen, te weten:

1. Inventariseren en analyseren van de samenhang van begrippen;
2. Redigeren, valideren en verifiëren van begrippen;
3. Aanbrengen van samenhang tussen begrippen en het datamodel;
4. Publiceren.

In elke paragraaf van dit hoofdstuk gaan we op een fase in.

Elk begrip kan zich in een andere fase bevinden. Wel is het gebruikelijk dat de fasen inventarisatie en analyse voor alle begrippen in een domein gelijktijdig wordt uitgevoerd. In het geval van een basisregistratie is het doel het inzichtelijk maken van de inhoud en de werking van die basisregistratie, inclusief de rationale daarachter. Omdat basisregistraties een wettelijke grondslag hebben is deze rationale in de regel juridisch.

## Inventariseren

### Bepalen van een basisset van te definiëren begrippen

Voor de meeste domeinen is er meestal wel een bron die gebruikt kan worden als een eerste basisset van te definiëren begrippen:

1. De meeste moderne wetten of standaarden bevatten aan het begin een opsomming van de belangrijkste begrippen. Een voorbeeld hiervan is Artikel 1 van de wet op de BAG;
2. Veel organisaties kennen een woordenlijst, glossary of woordenboek met de belangrijkste begrippen;
3. Als er al een (logisch) datamodel bestaat voor het domein, dan kunnen de entiteiten, attributen en waardenlijsten gebruikt worden als eerste basisset.

Het is niet noodzakelijk om een strikte keuze te maken uit één van deze drie bronnen. Een combinatie is goed denkbaar. Het heeft de voorkeur om de wet in ieder geval als uitgangspunt te nemen voor de terminologie en de definities.

Indien in een complex domein een goed uitgewerkt datamodel voorhanden is, kan dit een nuttige aanvullende bron zijn. Bedenk wel dat het met enige argwaan bekeken moet worden: het datamodel is vaak ontstaan vanuit een ICT-blik met als doel om te komen tot de opslag en verwerking van data in de administratieve werkelijkheid. Het kan zijn dat de ontwerper van het datamodel gekozen heeft voor andere termen en andere structuren, dan de termen en structuren die daadwerkelijk in de institutionele werkelijkheid gebruikt worden in het domein.

#### Begrippen uit de wet

Een moderne wet begint vaak met een opsomming van de begrippen die in de wet worden gebruikt. Ook wordt daarbij vaak een definitie gebruikt. Deze definities en begrippen kunnen overgenomen worden. Van belang is om zo letterlijk mogelijk de term uit de wet over te nemen.

De wetgeving bestaat niet alleen uit de wet, maar kent een gelaagdheid. Zo kan de wet in formele zin verder ingevuld zijn via een algemene maatregel van bestuur, en vervolgens in ministeriële regelingen, plaatselijke verordeningen en beleidsregels van een uitvoeringsorganisatie. Het is van belang om deze structuur te volgen en ook de nadere detaillering mee te nemen. De meeste begrippen zullen vaak al wel in de wet benoemd zijn, maar voor de precieze invulling kan het noodzakelijk zijn om verder in de structuur te duiken.

Een voorbeeld hiervan is de Wet op de BAG. Hiervoor zijn de volgende bronnen relevant:

* De Wet Basisregistraties Adresssen en Gebouwen;
* Besluit basisregistraties adressen en gebouwen;
* Regeling basisregistraties adressen en gebouwen;
* Catalogus grondslagen basisregistraties adressen en gebouwen.

Deze laatste bron bevat eigenlijk al een hele mooie opsomming van alle begrippen, definities en hun samenhang. Niet in alle gevallen is het zo mooi uitgewerkt, maar in het geval van deze basisregistratie is veel van het 'uitzoekwerk' al gedaan.

#### Begrippen uit een glossary

Veel organisaties hebben wel een glossary of woordenlijst van een domein. Sterker nog: het is de ervaring dat er voor één domein vaak meerdere woordenlijsten bestaan in één organisatie. Vaak zijn deze woordenlijsten ontstaan vanuit een project of vanuit een specifieke context. Dat is niet erg, zolang duidelijk is welke woordenlijsten er allemaal zijn en wie de beheerder van een dergelijke woordenlijst is.

Van belang is om zo snel mogelijk alle woordenlijsten bij elkaar te plaatsen, zodat duidelijk is waar sprake is van synoniemen en homoniemen. Op basis van deze totaallijst kan dan in eerste instantie de juiste terminologie gekozen worden: welke termen als 'naam' (voorkeursterm) voor de uiteindelijk te definiëren begrippen zullen worden gebruikt, en welke termen als 'synoniem' worden bestempeld.

Alle definities die in de woordenlijsten voorkomen kunnen mooi gebruikt worden als suggesties voor de formele definitie. Vaak komt het voor dat in woordenlijsten eigenlijk geen formele definities staan, maar meer toelichtingen of aanvullende uitleg.

Bedenk dat elke definitie in dergelijke woordenlijsten vaak een uitleg is voor een specifieke doelgroep. Je kunt de definitie dan ook gebruiken als een toets of de uiteindelijke uitleg of definitie wel goed te begrijpen is voor deze doelgroep. Uiteindelijk is het de bedoeling dat er precies één formele definitie overblijft. Wel kunnen meerdere toelichtingen voor specifieke doelgroepen handig zijn.

De inventarisatie is afgerond als voor elke term uit de oorspronkelijke woordenlijsten is vastgesteld of deze term als naam voor een begrip gebruikt wordt, een synoniem is van een begrip of terzijde wordt geschoven als (voorlopig) niet relevant voor de basisset.

#### Begrippen uit een datamodel

De meeste organisaties kennen voor een specifiek domein een datamodel. Daarin worden alle objecten, attributen en relaties uit de registratie benoemd. Voor de BRK is hiertoe bijvoorbeeld de documentatie van het InformatieModel Kadaster (IMKAD) gebruikt.

Waarden uit waardelijsten, met namen van 'soorten', 'typen' of 'klassen', zijn erg relevant voor de basisset van begrippen. Dergelijke waardelijsten bevatten vaak juridisch relevante begrippen, die "uit" het datamodel zijn gehaald op grond van normalisatieregels.

Elke naam van een objectklasse wordt een naam voor een begrip. Ook elke naam van een attribuutklasse wordt een naam van een begrip. Daarbij kan het voorkomen dat de naam van de attribuutklasse aangepast moet worden. Datamodel-specifieke attribuutklassen (vaak met namen als "id", "code", "type", "soort", "klasse") worden weggelaten. Let op het belangrijke verschil tussen de letterlijke naam "type" in deze alinea en het begrip 'typen' in de vorige alinea. Namen van relaties worden in principe ook namen van begrippen, hoewel de naam van de rol die een objectklasse in een relatie vervult vaak een betere naam is voor een begrip.

De relaties in een datamodel geven richting aan de relaties tussen begrippen. Ook hier is enige argwaan op zijn plaats: relaties tussen twee objectklassen zijn soms administratief van aard, en drukken dan in mindere mate de betekenisafhankelijkheid tussen twee begrippen uit. Uiteindelijk is het belangrijker wat de definitie van een begrip wordt, dan dat alle relaties uit het datamodel worden overgenomen.

Bij het definiëren van een begrippenstelsel op basis van een datamodel kunnen de volgende aanbevelingen worden gebruikt.

* Subtypen uit het datamodel en uit waardenlijsten worden vertaald naar een "specialisatie van" of "generalisatie van" relatie.
* Aggregaties en composities uit het datamodel worden vertaald naar een "bestaat uit" of "onderdeel van" relatie.
* Associaties uit het datamodel worden vertaald naar een "gerelateerd aan" relatie, mits sprake is van betekenisafhankelijkheid tussen de begrippen. Ook de rolnamen van de associaties kunnen zo tot begrippen leiden;
* De overige attributen worden vertaald naar de taxonomische relatie “is eigenschap van”.

### Bepalen basisset van te definiëren gebeurtenissen

Voor het vaststellen van de relevante gebeurtenissen, is het handig om uit te gaan van de levenscycli van de verschillende begrippen uit de basisset begrippen.

Niet alle begrippen hebben een levenscyclus. Er zijn begrippen die specifiek een 'aard' of 'omstandigheid' van een ander begrip beschrijven (zoals het begrip 'bouwjaar' uit de BAG geen eigen levenscyclus kent, maar een eigenschap is van een pand). Dergelijk begrippen kunnen voor het bepalen van de gebeurtenissen buiten beschouwen gelaten worden.

In sommige gevallen blijkt dat een gebeurtenis ook al als begrip is geïdentificeerd. Dit soort begrippen eindigen vaak op "ing": betaling, vestiging, vergunningverlening. Dit soort begrippen worden uit de basisset begrippen gehaald, en direct geplaatst in de basisset gebeurtenissen.

Sommige begrippen kunnen worden gegroepeerd, aangezien zij dezelfde levenscyclus kennen of in de basisset al als "specialisatie van" of "generalisatie van" andere begrippen zijn geïdentificeerd.

Per groep begrippen met een unieke levenscyclus wordt vervolgens gekeken welke aanleidingen in de natuurlijke werkelijkheid leiden tot een aanpassing van de levenscyclus van het begrip. Voor een pand uit de BAG zijn dit bijvoorbeeld aanleidingen als "vergunning verleend voor bouw van een pand", "bouw van het pand gestart", "pand in gebruik genomen".

Dit geeft uiteindelijk een volledig overzicht van alle relevante gebeurtenissen en de samenhang met de (groepen van) begrippen. Op het moment dat voor alle (groepen van) begrippen duidelijk is met welke gebeurtenissen de volledige levenscyclus wordt beschreven, is het model compleet.

Na het identificeren van alle gebeurtenissen, is het nog noodzakelijk om de gebeurtenissen te relateren aan de rest van het begrippenmodel. Dit kan overigens ook weer leiden tot nieuwe begrippen:

* Elke gebeurtenis heeft één of meerdere actoren die betrokken zijn bij de gebeurtenis. Elke actor is een begrip.
* De meeste gebeurtenissen hebben een object waarover de gebeurtenis gaat. Elk object is een begrip.
* Elke gebeurtenis heeft een aanleiding in de natuurlijke werkelijkheid. In deze aanleiding wordt vaak verwezen naar actoren en objecten.
* Elke gebeurtenis kent voorwaarden die moeten gelden voordat sprake kan zijn van de gebeurtenis. Deze voorwaarde wordt beschreven in termen van de actoren en objecten.
* Elke gebeurtenis kent een eindsituatie die geldt na afloop van de gebeurtenis. Deze eindsituatie wordt beschreven in termen van actoren en objecten.

## Redigeren, valideren en verifiëren

### Redigeren: definiëren en documenteren

Per begrip en gebeurtenis worden de definitie en overige documentatie geredigeerd door een juridisch medewerker. Van belang is dat deze juridisch medewerker kennis heeft van het domein en de weg weet in de verschillende wetteksten (formele wet, algemene maatregelen van bestuur, ministeriële regelingen). In de praktijk blijkt een HBO opgeleide jurist met minimaal twee jaar ervaring in het domein effectief deze redactieslag kan uitvoeren.

### Valideren

Om de redactiewerkzaamheden zo effectief mogelijk uit te kunnen voeren, is het van belang dat de redacteur geen verantwoordelijkheid hoeft te nemen voor de juridische juistheid. De redacteur voert zo goed mogelijk het proces uit dat is afgesproken en zorgt voor de juiste bronvermeldingen.

De verantwoordelijkheid voor de juridische juistheid ligt bij de domeineigenaar. Per organisatie en per domein kan dit verschillen. Bij de BRK is dit bijvoorbeeld letterlijk in de wet verankerd: de Bewaarder is verantwoordelijk. In andere gevallen kan dit complexer liggen en kan het nodig zijn om een specifieke persoon voor een specifiek domein aan te wijzen.

Doordat de domeineigenaar al een netjes uitgewerkt model krijgt, verloopt het valideren van de beschrijvingen relatief efficiënt. Degene die de validatie uitvoert mag zich beperken tot een “goed” of "niet-goed" oordeel, hoewel het vaak sneller gaat als degene die de validatie uitvoert zelf de verbetering doorvoert of even mondeling afstemt met de redacteur.

### Verifiëren

Het ingevulde raamwerk moet niet alleen juridisch juist zijn, maar het moet ook passen in de overige raamwerken en in lijn zijn met de regels die gelden voor BP4mc2. Dit wordt geverifieerd door een medewerker met specifieke kennis op het gebied van kennistechnologie en semantiek. Deze detecteert onder andere cirkelredenaties en onvolledig of onduidelijke definities van begrippen.

## Definiëren datamodel

Door eerst een begrippenkader te definiëren en daarna het datamodel te beschrijven kan het datamodel gebruik maken van dat begrippenkader. Een datamodel is een beschrijving van een structuur waarin data kunnen worden opgeslagen. Die data hebben betrekking op identificeerbare objecten in de natuurlijke, administratieve of institutionele werkelijkheid, bijvoorbeeld:

* Data over een 'pand' uit de BAG verwijzen naar eigenschappen van dat pand die je als mens daadwerkelijk kunt waarnemen in de natuurlijke werkelijkheid;
* Data over een 'eigendom' uit de BRK verwijzen naar het eigendomsrecht waar je als rechtspersoon daadwerkelijk aanspraak op kunt maken in de juridische werkelijkheid (het zal stand houden bij een rechter);
* Data over een 'gegevensregistratie' in de BAG verwijzen naar de data die daadwerkelijk in de administratie van de BAG aanwezig zijn. Bijvoorbeeld de datum van registratie van een gegeven in de BAG.

Er zijn twee alternatieven denkbaar voor de definitie van het datamodel:

1. We beschrijven het bestaande relationele of object-georiënteerde datamodel van de basisregistratie. We proberen niet om de administratie aan te passen, en accepteren dat het huidige informatiesysteem vooral nog relationeel of object-georiënteerd is opgezet.
2. We werken toe naar een volledige Linked Data administratie, waarbij de data uit deze administratie daadwerkelijk als Linked Data beschikbaar gesteld wordt en als ontologie beschreven is.

### Beschrijven van een relationeel datamodel

Omdat alle begrippen om pragmatische redenen al waren afgeleid uit het datamodel is de relatie bekend tussen een begrip en het data-element waarin informatie wordt opgeslagen over een object van het type dat wordt aangeduid met dat begrip.

Definities van data-objecten krijgen dan de volgende vorm:

> "Het entiteittype OpenbareRuimte bevat de data over objecten die worden aangeduid met het begrip OpenbareRuimte."

Soms worden begrippen in een datamodel gegroepeerd en gegeneraliseerd. Dat leidt tot een definitie als:

> "Het entiteittype AdresseerbaarObject is een generalisatie van de entiteittype Verblijfsobject, Ligplaats en Standplaats."

Het begrip 'adresseerbaar object' komt in de wet niet voor, maar is in het datamodel opgevoerd als hulpmiddel om aan zowel verblijfsobjecten, ligplaatsen en standplaatsen een adres te kunnen toekennen, het is een zogenaamd 'abstract datatype', dat niet zichtbaar is in de natuurlijke, noch in de juridische werkelijkheid.

Een laatste categorie zijn begrippen die juridisch allemaal hun eigen betekenis hebben, maar in het datamodel geclusterd worden. Dit komt vooral voor in meer ingewikkelde registraties die al wat een langere geschiedenis hebben. Een voorbeeld zijn de rechten die worden vastgelegd in de BRK:

> "Het datatype ZakelijkRecht bevat de data over objecten die worden aangeduid met de begrippen Eigendom, Opstal, Erfpacht, Vruchtgebruik,.."

### Beschrijven van een ontologie

Voor de BAG is een vertaling gemaakt van het begrippenmodel naar een ontologie die hier direct op aansluit. Daarbij wordt de relatie tussen klassen, eigenschappen en begrippen 1 op 1:

* Voor elk objectiveerbaar begrip ontstaat een klasse. Zo bevat de klasse met de naam "OpenbareRuimte" de data over de objecten die worden aangeduid met het begrip met de naam "Openbare ruimte".
* Voor elk begrip dat een eigenschap is van een klasse en geen verwijzing is naar een ander begrip, ontstaat een data-eigenschap. Zo representeert de eigenschap met de naam "bouwjaar" het begrip met de naam "Bouwjaar". (Let op de hoofdletterconventie)
* Voor elk begrip dat een eigenschap is van een klasse en wel een verwijzing is naar een ander begrip, ontstaat een object-eigenschap. Zo representeert de eigenschap 'ligt in' de relatie tussen de klassen 'OpenbareRuimte' en 'Woonplaats'.

Datamodellen omvatten ook data die betrekking heeft op de data in het datamodel zelf. Voorbeelden hiervan zijn: datum en tijdstip waarop een gegeven in de registratie is vastgelegd, wie het gegeven heeft opgevoerd en de geldigheid van het gegeven. We schetsen hier twee mogelijkheden om dit in een ontologie te modelleren:

1. Reïficatie van de data. Dat wil zeggen dat alle uitspraken in het datamodel worden uitgewerkt tot afzonderlijke triples. Een letterlijke vertaling van een relationeel datamodel naar een Linked Data representatie zal zo'n type ontologie tot gevolg hebben. Het nadeel van zo’n datamodel is dat de omvang van de triple store hierdoor 3x zo groot wordt. Een ander nadeel is dat de SPARQL queries die nodig zijn om een dergelijk datamodel te bevragen veel ingewikkelder zijn.

2. Gebruik maken van het feit dat triples onderdeel zijn van een graph. Dat wil zeggen dat alle triples die dezelfde "metadata" hebben ook in dezelfde graph worden gezet. Door deze graph een URI te geven (het wordt dan een 'named graph'), kan extra data over de graph weer als 'normale' triples opgeslagen worden. Het nadeel van deze methode is dat hiervoor een quad store noodzakelijk is, en dit zal gaan leiden tot erg veel verschillende named graphs. Niet elke quad store is ingericht op een zeer groot aantal graphs.

Puur functioneel gaat onze voorkeur uit naar de tweede oplossing. Deze oplossing is in de praktijk ook al vaker ingezet (zie bijvoorbeeld: [[JENI]]. Het betekent wel dat de Linked Data representatie zal afwijken van de oorspronkelijke relationele beschrijving van het datamodel.

In de Linked Data representatie komt veel meer nadruk te liggen op de gebeurtenissen die aanleiding hebben gehad tot het wijzigen van de data in de administratie. Voor elk van deze gebeurtenissen wordt vastgelegd:

* De gebeurtenis die heeft plaatsgevonden;
* Gegevens over tijd en plaats (zowel formele historie als materiële historie);
* Herkomstinformatie (zoals bron en auteur).

Door deze manier van modelleren blijkt bovendien dat er in termen van Linked Data eigenlijk geen "CRUD" meer bestaat, maar alleen nog "CR" (toevoegen en lezen). Het wijzigen van data komt neer op het toevoegen van een nieuwe versie, het verwijderen van data komt neer op het toevoegen van een uitspraak bij bepaalde gegevens dat deze niet meer actueel zijn.

Op deze wijze kan invulling gegeven worden aan het principe: "anybody can say anything about anything". Maar bovendien wordt ook de integriteit van de uitspraken (de data) behouden: bij het vastleggen wordt ook vastgelegd wie de uitspraak deed, wanneer dit werd gedaan en vanuit welke context. Op die wijze is altijd helder welke data op een zeker moment in tijd en vanuit welke context de 'correcte' data is.

Een dergelijk manier van publiceren lijkt sterk op het idee van een datamodel zoals is ontwikkeld voor datawarehouses (datavault technologie, zie [[DATAVAULT]] en voor sommige gedistribueerde database systemen (bijvoorbeeld Datomic, zie [[DATOMIC]]).

## Publiceren

In principe wordt het semantisch raamwerk gepubliceerd met geverifieerde begrippen. Het is echter ook mogelijk begrippen met de status 'gevalideerd' en/of 'ter validatie' al vast te publiceren. De begrippen, gebeurtenissen en situaties worden gepubliceerd volgens de vocabulaire zoals beschreven in het voorgaande hoofdstuk.

Het datamodel wordt gepubliceerd volgens de vocabulaire die past bij de vorm waarin het datamodel is opgesteld:

* De ERD vocabulaire als sprake is van een relationeel datamodel;
* De UML vocabulaire als sprake is van een object-georiënteerd datamodel;
* De RDF/OWL vocabulaire als sprake is van een datamodel dat als ontologie is vormgegeven.

Alle informatie wordt gepubliceerd als Linked Data. Naast het vaststellen van het juiste vocabulaire is de belangrijkste stap voorafgaand aan de daadwerkelijke publicatie het toepassen van de URI strategie.

### Bepalen domeinnaam

De eerste stap in deze fase is het bepalen van een domeinnaam waarbinnen de data van een registratie worden gepubliceerd. De uitgangspunten en aanbevelingen voor een domeinnaam zijn in de paragraaf over de URI strategie beschreven, maar de praktijk is soms weerbarstiger.

Op basis van de uitgangspunten en aanbevelingen ligt voor de BAG een domein http://bag.nl voor de hand of http://bag.basisregistratie.nl. De meeste drieletterige domeinnamen die beginnen met een “b” blijken in Nederland echter geregistreerd bij bureaus die allerlei diensten verlenen, meestal op het gebied van financiële advisering of kredietbemiddeling. Ook de domeinnamen "basisregistratie.nl" is al geregistreerd door een dienstverlenend bedrijf.

In deze jungle van domeinnamen is het eigenlijk onmogelijk zomaar een domeinnaam te introduceren die het vertrouwen geeft dat deze de bron is van een authentieke registratie. De meest solide manier is het vastleggen van de domeinnaam die de authentieke bron representeert in wetgeving. Een voorbeeld is https://www.officielebekendmakingen.nl, waar alle officiële bekendmakingen van de overheid worden gepubliceerd. Deze domeinnaam is vastgelegd in artikel 1 van de Bekendmakingsregeling.

Gewenst is dat de authentieke domeinnaam daadwerkelijk in de wet wordt opgenomen. In afwachting van de wetsaanpassing waarin een domeinnaam voor publicatie van de authentieke dat wordt vastgesteld, is gekozen voor de volgende oplossing. In de Wet Basisregistraties adressen en gebouwen staat in Hoofdstuk 4, artikel 26: 'De Dienst (i.c. het Kadaster) houdt een geautomatiseerde landelijke voorziening waarin de data uit de in de gemeenten gehouden adressenregistraties en de gebouwenregistraties zijn opgenomen.'. Het Kadaster is onderdeel van de overheid. En de domeinnaam `overheid.nl` is al van de overheid. Daarnaast is de bag een basisregistratie. Hierdoor lijkt de domeinnaam http://bag.basisregistraties.overheid.nl op dit moment de beste oplossing.

Om dit voor elkaar te krijgen, was het wel nodig dat de eigenaar van het domein `overheid.nl` registreert dat http://bag.basisregistraties.overheid.nl mag bestaan, en verwijst naar een website van het Kadaster. Tot die dat was deze URL niet beschikbaar, en werd de data zolang op http://bag.kadaster.nl gehost. Doordat er standaard heradresseringsmogelijkheden aanwezig zijn op het web, is het nog steeds mogelijk om beide domeinnamen te gebruiken: er is daadwerkelijk sprake van persistente URLs!

### type, concept en referentie toegepast op het begrippenkader

Alle in het begrippenkader gedefinieerde begrippen zijn ook concepten. Conform de URI-strategie krijgt ieder begrip een id en wordt de documentatie over een begrip via een 303-redirect gepresenteerd met een `doc` URI.

* Zo krijgt het begrip ‘nummeraanduiding’ in de BAG de URI http://bag.basisregistraties.overheid.nl/id/begrip/Nummeraanduiding. Dit is de identificatie (type=id) van het begrip (concept) dat wordt aangeduid met de term Nummeraanduiding (referentie).
* Als deze URI als http-vraag wordt ingetoetst in de browser wordt de documentatie over het begrip dat wordt aangeduid met de term Nummeraanduiding gepresenteerd in een html pagina met als URI http://bag.basisregistraties.overheid.nl/doc/begrip/Nummeraanduiding.
* De documentatie over een bepaald begrip kan in de loop der tijd wijzigen. Daarom is het ook mogelijk om een jaar, maand en dag toe te voegen aan de referentie om de documentatie op een specifiek tijdstip op te vragen. Dit kan via URI http://bag.basisregistraties.overheid.nl/doc/2014/04/01/begrip/Nummeraanduiding.

### type, concept en referentie toegepast op het datamodel

In de URI-strategie wordt aanbevolen data te definiëren met `def` URI-type.

* Zo krijgt het gegevenselement 'nummeraanduiding' in de BAG de URI http://bag.basisregistraties.overheid.nl/def/bag#Nummeraanduiding. Dit is de definitie (type=`def`) van de klasse aangeduid met de term Nummeraanduiding (referentie).
* Als deze URI als http-vraag wordt ingetoetst in de browser wordt de documentatie en metadata over het data-element OpenbareRuimte gepresenteerd in een html pagina met als URI http://bag.basisregistraties.overheid.nl/def/bag.
* De documentatie over een bepaald begrip kan in de loop der tijd wijzigen. Daarom is het ook mogelijk om een jaar, maand en dag toe te voegen aan de referentie om de documentatie op een specifiek tijdstip op te vragen. Dit kan via URI http://bag.basisregistraties.overheid.nl/def/2014/04/01/bag.

### type, concept en referentie toegepast op de data

In de URI-strategie wordt aanbevolen data te definiëren met het URI-type `id`.

* Zo krijgt de woonplaats "Amersfoort" in de BAG de URI "http://bag.basisregistraties.overheid.nl/id/woonplaats/1664". Dit is de identificatie (type=id) van de woonplaats die in de BAG de identificatie "1664" heeft.
* Als deze URI als http-vraag wordt ingetoetst in de browser wordt de documentatie en metadata over de gegevens van Amersfoort gepresenteerd in een html pagina met als URI http://bag.basisregistraties.overheid.nl/doc/woonplaats/1664.
* De gegevens over een bepaalde woonplaats kunnen in de loop der tijd wijzigen. Daarom ondersteunt de BAG de mogelijkheid om een jaar, maand en dag toe te voegen aan de referentie om de documentatie op een specifiek tijdstip op te vragen. Dit via URI http://bag.basisregistraties.overheid.nl/doc/2014/04/01/woonplaats/1664.

### Formuleren van de URI

De volgende best-practices gelden voor het formuleren van de URI:

* Voor begrippen en klassen is de identificatie gelijk aan de term van het begrip. Het is gangbaar om deze te schrijven als UpperCamelCase. Dat wil zeggen: als de aanduiding voor een begrip in natuurlijke taal uit meerdere woorden bestaat schrijven we de woorden aan elkaar waarbij elk woord met een hoofdletter begint, gevolgd door kleine letters. Diacrieten worden verwijderd. Leestekens zoals haakjes, komma’s, "`#`" en "`&`" dienen te worden vermeden.
* Voor eigenschappen geldt hetzelfde maar dan voor lowerCamelCase: Het eerste woord waarmee de eigenschap in natuurlijke taal wordt aangeduid begint met een kleine letter.
* Voor begrippen is het handig om als `{concept}` te kiezen voor `begrip` of het Engelse `concept`.
* Voor entiteit-attribuut modellen is het handig om als `{concept}` te kiezen voor `element`.
* Voor klasse-eigenschap modellen is het handig om als `{concept}` te kiezen voor `ontologie` of het engelse `ontology`.
* Voor entiteit-attribuut modellen is het handig om voor de "`#`" de klassenaam te plaatsen en achter de "`#`" het attribuut (of relatie).
* Voor klasse-entiteit modellen is het handig om zowel de klasse als de entiteit achter de "`#`" te plaatsen.

De volgende best-practices gelden voor de redirect:
* Maak gebruik van 303-redirect met `id` en `doc` URIs.
De redirect kan gaan naar de meest  actuele versie (een `doc` URI zonder een datum of tijdnotatie), dan wel naar een specifieke versie.
* De datum en/of tijdnotatie in de URL behoort te verwijzen naar een peildatum. De gegevens die worden teruggegeven zouden niet meer mogen wijzigen, ook als op een later moment opnieuw dezelfde vraag wordt gesteld.
* Aanvullende contextuele vragen horen geen URIs te zijn volgens de URI-strategie, maar URI-Vragen (dus met een "`?`").
