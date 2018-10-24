# Inleiding

## Aanleiding

### De waarde van informatie

In onze maatschappij is de waarde van (goede) informatie altijd belangrijk geweest. Algemeen geaccepteerd is het principe dat goede bedrijfsbeslissingen, die ervoor zorgen dat een bedrijf of instelling haar doelstellingen sneller, beter, goedkoper kan bereiken, afhankelijk zijn van de toegang tot goede informatie. De afgelopen jaren is de bewustwording dat informatie van strategische waarde is voor een organisatie alleen maar toegenomen. Als gevolg daarvan is de ontwikkeling van infonomics op gang gekomen: het vakgebied dat (bedrijfs)economie en informatie bij elkaar brengt [INFONOMICS].

Infonomics kan bedrijven helpen om te komen tot betere bedrijfsresultaten, door strategische beslissingen te nemen over het beheer en vergaren van (goede) informatie. In 'The economics of information management' [ECONIM] worden daarbij de volgende principes neergezet voor het verbeteren van de informatie in een organisatie:</p>

* Verbeter de kwaliteit;
* Verbeter de beschikbaarheid;
* Verbeter het gemak waarmee informatie gebruikt kan worden;
* Innoveer: introduceer nieuwe technologie (zodat data omgezet kan worden in beter bruikbare informatie);
* Voeg nieuwe of (toegang tot) externe databronnen toe.

BP4mc2 geeft enkele best practices om bovenstaande voor elkaar te krijgen.

### De waarde van informatie voor de Nederlandse overheid

Een belangrijke doelstelling van de overheid is om de overheid transparant te laten zijn, overheidsinformatie te delen en beschikbare informatie te (her)gebruiken. Het kabinet heeft haar ambitie op dit vlak kenbaar gemaakt in het 'Actieplan open overheid' [APOO]. In 2011 is in de 'Aanwijzingen voor de regelgeving' een bepaling opgenomen, die het zoveel mogelijk aansluiten op begrippen in basisregistraties voorschrijft [AANW161]. Door het hergebruiken van data worden de administratieve lasten voor burgers en bedrijven verminderd.

Voor de overheid zelf worden kwaliteitsverbeteringen en kostenbesparingen gerealiseerd. Als data meer en beter worden gebruikt, komt er meer terugkoppeling op de kwaliteit en worden minder fouten gemaakt.

### Linked Data

Linked Data lijkt een bruikbare technologie om (overheids)data direct via het web te publiceren. In het artikel 'Een nieuwe wereld, een nieuwe informatie architectuur' [RIJNSANT] beschrijven Ria van Rijn en Arjen Santema de mogelijkheden die linked data bieden. Momenteel wordt data in het beste geval via webservices, maar vaak ook nog gewoon als databestand tussen organisaties uitgewisseld. Dergelijke oplossingen hebben vaak als kenmerk dat ze als point-to-point-solution zijn gerealiseerd en moeilijk op te schalen zijn naar breder gebruik. Een belangrijke reden hiervoor is dat een impliciete context wordt verondersteld waarbinnen de data bruikbaar is, zonder dat deze context met de data wordt meegeleverd.

Door data via het web te publiceren wordt deze in een keer, voor iedereen beschikbaar, vanuit een herkenbare bron gepubliceerd. Linked data kan inclusief context worden gepubliceerd. Met context wordt de uitleg van de betekenis van data en metadata bedoeld. Metadata gaan bijvoorbeeld over de wijze van inwinning, volledigheid, betrouwbaarheid, tijdigheid, en herkomst. Linked data biedt de mogelijkheid om deze metadata in dezelfde vorm te publiceren als de data zelf.</p>

## Van 20e eeuw principes naar 21e eeuw principes

In de presentatie van Christophe Guéret, gehouden op het PiLOD congres op 13 november 2013 [LIKNSP], wordt treffend geschetst hoe het delen van kennis zich in de afgelopen decennia heeft ontwikkeld door het internet. Tot 1989 waren documenten de gangbare vorm om informatie uit te wisselen. Documenten werden op bulletin boards geplaatst vanwaar je ze kon downloaden. Vervolgens moest je eerst op zoek naar software om dit te kunnen lezen (bijvoorbeeld Wordpad of WordPerfect). Via news groups werden nieuwe documenten en nieuwe versies van documenten bekend gemaakt en kon je nagaan welke verwijzingen er waren.

Het web heeft danig verandering gebracht in het kunnen zoeken, vinden en verbinden van informatie. Informatie wordt steeds meer aangeboden als webpagina die door elke browser aan de gebruiker kan worden getoond. Deze webpagina wordt gegenereerd door een applicatie die de versies beheert en navigatie naar vele andere gerelateerde informatie geautomatiseerd aanbiedt. Bijvoorbeeld linkjes naar een pagina over de auteur, andere versies van de informatie of andere pagina’s over hetzelfde onderwerp. Elke link bevat een zogenaamde Uniform Resource Identifier (URI) die iedere pagina een duidelijk adres op het internet geeft, waarnaar direct kan worden verwezen zodat informatie steeds nauwkeuriger wordt verbonden.

Maar als het om data gaat, gaan we nog vaak hetzelfde te werk als dertig jaar geleden met documenten. Als je een dataset vindt moet je op zoek naar software om deze in te lezen (meestal een database of spreadsheet programma). Je moet zelf goed bewaken dat je alle updates krijgt om de gereproduceerde dataset synchroon te houden met het origineel. En links naar andere datasets moeten voor iedere reproductie van een dataset opnieuw worden aangebracht. Dit klinkt inderdaad wel een beetje 'jaren negentig'.</p>

Tim Berners Lee stelt vier eenvoudige principes voor om te hanteren als je data via het web publiceert [LINKEDDATA]:

* Use URIs as names for things;
* Use HTTP URIs so that people can look up those names;
* When someone looks up an URI, provide useful information, using the standards (RDF*, SPARQL);
* Include links to other URIs. so that they can discover more things.

Met deze principes worden data gepubliceerd ALS webpagina's in plaats van OP webpagina's. Dit is fundamenteel anders dan het 'jaren negentig-achtige' op het web zetten van een databestand en een welgemeend 'zoek het verder zelf maar uit!'.

## BP4MC2: Een aanpak

Vanuit het W3C zijn er standaarden om betekenis vast te leggen en om datamodellen voor linked data te maken. Zo is SKOS [SKOS] (Simple Knowledge Organization System) een door het W3C vastgestelde standaard voor het definiëren van begrippen en hun samenhang in de vorm van een thesaurus of taxonomie. Voor het definiëren van een ontologie als basis voor een in RDF te representeren datamodel is OWL [OWL] (Web Ontology Language) beschikbaar.

Er zijn echter nog weinig beschreven practices waarin wordt beschreven hoe en in welke stappen een dataset kan worden omgezet naar een structuur die maximaal aansluit bij de moderne web standaarden. Deze website is de neerslag van de eerste praktische ervaringen op dit gebied in Nederland.

BP4mc2 (in het Engels: Best Practices for Meaningful Connected Computing) is een methode om vanuit juridische en andere vakmatige richtlijnen de betekenis, structuur en dynamiek van een informatiesysteem te beschrijven. Daarbij wordt gebruik gemaakt van concepten uit de semantiek en de wereld van Linked Data. BP4mc2 is open. Iedereen wordt dan ook uitgenodigd om een bijdrage te leveren aan het verbeteren en optimaliseren van BP4mc2.

## 1.4 Opbouw van deze website

Hoofdstuk 2 geeft een overzicht van de belangrijkste elementen in BP4mc2. In de volgende hoofdstukken worden al deze elementen uitgediept. Dat gebeurt aan de hand van het raamwerk van Seligman, Wijers en Sol. In dit raamwerk worden vier aspecten van een methode onderscheiden [MSISD]:

* Hoofdstuk 3 beschrijft de denkwijze (way of thinking), het theoretisch kader dat we hebben gebruikt bij het uitwerken van onze methode;
* Hoofdstuk 4 beschrijft de modelleringswijze (way of modelling). Dit hoofstuk geeft een beschrijving van de gebruikte vocabulaires en modellen en de wijze waarop deze modellen gerepresenteerd kunnen worden;
* Hoofdstuk 5 beschrijft de werkwijze (way of working). Het geeft practische richtlijnen hoe je BP4mc2 kunt toepassen;
* Hoofdstuk 6 beschrijft de ondersteuning (way of supporting), aan de hand van een concrete implementatie van BP4mc2.

## Schrijfconventies

**Dubbele of enkele**

Deze website gaat voor een groot deel over taal en het gebruik van woorden (termen) om begrippen aan te duiden. We maken dan ook regelmatig onderscheid tussen een begrip en de term die we gebruiken om dat begrip mee aan te duiden. Om niet steeds expliciet te hoeven benoemen of we de term of het begrip bedoelen maken we gebruik van enkele of dubbele aanhalingstekens.

We gebruiken dubbele aanhalingstekens om een letterlijke (letter voor letter zo gespelde) term aan te geven, bijvoorbeeld "Marco Polo" en soms ook om een letterlijk citaat weer te geven.

We gebruiken enkele aanhalingstekens om aan te geven dat we een begrip gebruiken en soms ook om aan te geven dat een woord niet letterlijk maar min of meer figuurlijk wordt gebruikt of om voorbeeldzinnen aan te geven waar het om de strekking van de zin en niet de letterlijke formulering van de zin gaat.

**Linked Data met of zonder beginhoofdletters**

Als we het over 'Linked Data' als methode hebben, dan gebruiken we hoofdletters. Hebben we het daarentegen over 'linked data' als een verzameling gegevens die gelinkt is volgens de Linked Data principes, dan gebruiken we kleine letters.

**(Linked) data: enkelvoud of meervoud**

'Linked Data', de methode dus, is enkelvoud. Als we 'data' bedoelen als 'een verzameling gegevens' dan is het ook enkelvoud, maar als we het bedoelen als 'telbare gegevens' dan meervoud.
