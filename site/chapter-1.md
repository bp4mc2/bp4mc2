# Inleiding

## Introductie bij versie 2.0 van dit document
De originele eerste versie van dit document is gepubliceerd in zowel boekvorm als website op 18 juni 2014. Sinds dat moment zijn er veel nieuwe toepassingen gerealiseerd en ervaringen opgedaan met betrekking tot Linked Data en in het bijzonder BP4mc2. Deze nieuwe ervaringen liggen met name in de wijze van modelleren, de werkwijze en de beschikbare ondersteuning. De denkwijze is daarbij grotendeels hetzelfde gebleven. Dit is ook terug te zien in deze nieuwe versie. De wijzigingen zitten met name in de hoofdstukken 4, 5 en 6. Hoofdstukken 1, 2 en 3 zijn grotendeels hetzelfde gebleven.

Daarnaast zijn drie specifieke onderwerpen verder uitgewerkt en hebben een eigen pagina gekregen:

* [Fudamentals of Linked Data](http://bp4mc2.org/modeling) behandelt in detail de concepten en de fundamenten van Linked Data. Het is een verdieping van hoofdstuk 3, denkwijze. Must-read voor iedereen die alle details van Linked Data wil doorgronden en op zoek is naar argumenten in ontwerpdiscussies, met name als het gaat om de verschillen tussen traditionele relationele of object-georienteerde modellering en het modelleren op basis van Linked Data principes.
* [Value lists](http://bp4mc2.org/modeling/value-lists) behandelt in detail de rationale bij het ontwerpen van Linked Data oplossingen voor waarde- of referentielijsten. Het is een verdieping van hoofdstuk 4, modelleringswijze.
* [Profielen](http://bp4mc2.org/model) beschrijft in de detail de profielen die gebruikt kunnen worden bij het modelleren van Linked Data ontwerpen. Dit document betreft de grootste toevoeging t.o.v. de eerste versie, en behandelt veel van de best practices die in afgelopen jaren zijn opgedaan.

## Aanleiding

### Een informatie gedreven samenleving

Het web heeft danig verandering gebracht in het kunnen zoeken, vinden en verbinden van informatie. Informatie wordt steeds meer aangeboden als webpagina die door elke browser aan de gebruiker kan worden getoond. Deze webpagina wordt gegenereerd door een applicatie die de versies beheert en navigatie naar vele andere gerelateerde informatie geautomatiseerd aanbiedt. Bijvoorbeeld linkjes naar een pagina over de auteur, andere versies van de informatie of andere pagina’s over hetzelfde onderwerp. Elke link bevat een zogenaamde Uniform Resource Identifier (URI) die iedere pagina een duidelijk adres op het internet geeft, waarnaar direct kan worden verwezen zodat informatie steeds nauwkeuriger wordt verbonden.

Als het om data gaat, gaan we nog vaak hetzelfde te werk als dertig jaar geleden met documenten, voor de tijd van het world wide web. Toen waren documenten de gangbare vorm om informatie uit te wisselen. Documenten werden op bulletin boards geplaatst vanwaar je ze kon downloaden. Vervolgens moest je eerst op zoek naar software om dit te kunnen lezen (bijvoorbeeld Wordpad of WordPerfect). Via news groups werden nieuwe documenten en nieuwe versies van documenten bekend gemaakt en kon je nagaan welke verwijzingen er waren. Als je in deze tijd een dataset vindt moet je vaak nog steeds op zoek naar software om deze in te lezen (meestal een database of spreadsheet programma). Je moet zelf goed bewaken dat je alle updates krijgt om de gereproduceerde dataset synchroon te houden met het origineel. En links naar andere datasets moeten voor iedere reproductie van een dataset opnieuw worden aangebracht. Dit is inderdaad wel een beetje 'jaren negentig'.

### Linked Data

Linked Data is dé technologie om (overheids)data direct via het web te publiceren. In het artikel 'Een nieuwe wereld, een nieuwe informatie architectuur' [[RIJNSANT]] beschrijven Ria van Rijn en Arjen Santema de mogelijkheden die linked data bieden. Momenteel wordt data in het beste geval via webservices, maar vaak ook nog gewoon als databestand tussen organisaties uitgewisseld. Dergelijke oplossingen hebben vaak als kenmerk dat ze als point-to-point-solution zijn gerealiseerd en moeilijk op te schalen zijn naar breder gebruik. Een belangrijke reden hiervoor is dat een impliciete context wordt verondersteld waarbinnen de data bruikbaar is, zonder dat deze context met de data wordt meegeleverd.

Door data via het web te publiceren wordt deze in een keer, voor iedereen beschikbaar, vanuit een herkenbare bron gepubliceerd. Linked data kan inclusief context worden gepubliceerd. Met context wordt de uitleg van de betekenis van data en metadata bedoeld. Metadata gaan bijvoorbeeld over de wijze van inwinning, volledigheid, betrouwbaarheid, tijdigheid, en herkomst. Linked data biedt de mogelijkheid om deze metadata in dezelfde vorm te publiceren als de data zelf.

Tim Berners Lee stelt vier eenvoudige principes voor om te hanteren als je data via het web publiceert [[LINKED-DATA]]:

* Use URIs as names for things;
* Use HTTP URIs so that people can look up those names;
* When someone looks up an URI, provide useful information, using the standards (RDF*, SPARQL);
* Include links to other URIs. so that they can discover more things.

Met deze principes worden data gepubliceerd ALS webpagina's in plaats van OP webpagina's. Dit is fundamenteel anders dan het 'jaren negentig-achtige' op het web zetten van een databestand en een welgemeend 'zoek het verder zelf maar uit!'.

### Api economie
>Deze sectie wordt nog aangevuld

## De waarde van data en informatie

In onze maatschappij is (goede) informatie altijd belangrijk geweest. Algemeen geaccepteerd is het principe dat goede bedrijfsbeslissingen, die ervoor zorgen dat een bedrijf of instelling haar doelstellingen sneller, beter, goedkoper kan bereiken, afhankelijk zijn van de toegang tot goede informatie. De afgelopen jaren is het besef dat informatie van strategische waarde is voor een organisatie alleen maar toegenomen. Een voorbeeld van dit besef is de ontwikkeling van infonomics, het vakgebied dat (bedrijfs)economie en informatie bij elkaar brengt [[INFONOMICS]].

Infonomics kan bedrijven helpen om te komen tot betere bedrijfsresultaten, door strategische beslissingen te nemen over het beheer en vergaren van (goede) informatie. In 'The economics of information management' [[ECONIM]] worden daarbij de volgende principes neergezet voor het verbeteren van de informatie in een organisatie:</p>

* Verbeter de kwaliteit;
* Verbeter de beschikbaarheid;
* Verbeter het gemak waarmee informatie gebruikt kan worden;
* Innoveer: introduceer nieuwe technologie (zodat data omgezet kan worden in beter bruikbare informatie);
* Voeg nieuwe of (toegang tot) externe databronnen toe.

‘Data centric’ organisaties gaan nog een stap verder. Zij bouwen bedrijf primair op data.  De top3 bedrijven met de hoogste markwaarde in de wereld, die onlangs door de 1 triljoen dollar  zijn geschoten (BRON…), zijn bedrijven die data-gedreven werken. Een beetje jammer is wel dat bij deze alle kennis en baten uit die data terugvloeien naar deze bedrijven zelf en niet wordt gedeeld. Het internet was ooit was bedoeld als open samenwerkingsplatform, maar is inmiddels doorgegroeid naar een netwerk van platforms per domein als entertainment (Apple), informatie (Google), handel (Amazon) en sociale netwerken (Facebook). Elke platform heeft zijn eigen ‘platform leader’ die  via een winner-takes-it-all mechanisme feitelijk de monopolist  waarnaar alle winst uit dat platform terugvloeit.

De ontwikkeling naar platforms is een brede. Gawer (GAWER) beschrijft vanuit een traditionele economische benadering en de technologische benadering de beweging naar dergelijke brede technologische platforms in de digitale wereld. Zij schetst een ontwikkeling waarbij nadat organisaties hun interne platforms op orde hadden (fase 1) in‘supply chain’ platforms bilaterale samenwerking in ketens werd gezocht (fase 2) naar ‘industry platforms’ per domein. Voorbeelden van dergelijke ‘industry platforms’ zijn zoals hierboven beschreven Apple, Google, Amazon en Facebook. Deze bedrijven zijn allemaal Amerikaans en alle winsten vloeien terug naar Silicon Valley.

Ook China ontwikkelt zich sterk op het gebied van data. Daar worden bewust alternatieven ontwikkeld voor de Amerikaanse groten zoals Alibaba en WeChat. Enerzijds wordt daarmee de afhankelijkheid van Amerika verkleind, anderzijds biedt dit de Chinese overheid de mogelijkheid om de infrastructuur zodanig in te richten dat maximale controle vanuit de overheid op het dataverkeer mogelijk wordt. Een voorbeeld waarin deze controle de levens van mensen direct binnendringt is het Chinese stelsel van social credits.

Marleen Stikker benoemde in Zomergasten (12 augustus 2018) een ‘derde weg’ voor Europa voor het omgaan met data in de informatiesamenleving.  Europa is gebaseerd op de principes van een democratische rechtstaat met respect voor het individu en een open markt. Binnen Europa zet de EU zich expliciet in voor een open ‘marktplaats’. Het ISA2 (interoperability solutions for public administrations, businesses and citizens) programma van de Europese Unie zet sterk in op het gebruik van door de W3C (World Wide Web Consortium) vastgestelde webstandaarden voor de communicatie tussen overheden, burgers en bedrijven (CAMPOLARGO). Met de GDPR heeft de EU ook een kader neergezet voor borging van de privacy.

In Nederland wordt in het rapport ‘Maak waar!’ aangegeven dat de digitale infrastructuur vitaal is voor de Nederlandse samenleving. In de huidige informatiesamenleving zijn publieke diensten ook steeds meer als ‘informatiediensten’ te typeren. De kwaliteit en toegankelijkheid van digitale informatie is onontbeerlijk voor een kwalitatief hoogwaardige dienstverlening (OECD 2014).  Ook de AVG dwingt de overheid na te denken over registraties. Door gegevens steeds via bilaterale platforms te kopiëren van de ene naar de andere organisatie ontstaan overal kopieën. Degene waarover de data gaan heeft daardoor geen enkel zicht op welke data waar is opgeslagen. En als ergens een fout zit, kan die vaak nog wel in de bron worden hersteld, maar blijft deze in allerlei kopieën rondzwerven.

Ook de Nederlandse Overheid zet daarom in op het gebruik van webstandaarden om de waarde en toegankelijkheid van informatie te vergroten (NORA). Door het gebruik van webstandaarden wordt informatie computer interpreteerbaar en vindbaar voor zoekmachines. De informatie wordt bij wijze van spreken uit het ‘dark web’ van tweezijdig samenwerkende partijen gehaald en wordt deel van het open wereldwijde web. Een eerste voorbeeld is het stelsel van basisregistraties, waarvoor alle authentieke informatie wordt beschreven in een stelselcatalogus. Het digitaal stelsel voor de Omgevingswet is een stelsel waarin alle informatie over wat mag en wat kan digitaal inzichtelijk wordt. Wat mag ligt vast in wet- en regelgeving, zoals de Omgevingswet, AMVB’s en Omgevingsplannen. De 'Aanwijzingen voor de regelgeving' [[AANW161]] schrijven voor dat waar mogelijk wordt aangesloten op begrippen in basisregistraties. Ook is er onlangs een nieuwe aanwijzing bij gekomen die het mogelijk maakt om vanuit de wetgeving te linken aan URI's. Lijkt me goed om dat in de inleiding toch wel te benoemen, misschien bij het stukje verder over de overheid?Voor wat kan, kan informatie worden toegevoegd uit zogenaamde informatiehuizen. Deze data varieert van uitstoot- of lozingsberekeningen voor lucht of water tot data over natura 2000 gebieden en data uit basisregistraties zoals de BGT. Ook voor het digitaal stelsel Omgevingswet wordt een stelselcatalogus gerealiseerd.

## BP4MC2: Een aanpak

BP4mc2 (in het Engels: Best Practices for Meaningful Connected Computing) geeft een aantal best practices die de basis vormen voor een open platform voor het delen van data inclusief de betekenis van deze data en de metadata over de herkomst en kwaliteit van deze data. De practices zijn allemaal gebaseerd op W3C standaarden.  De practices gaan enerzijds over begrippen die nodig zijn om letterlijk te begrijpen waar het over gaat en anderzijds over data die worden gedeeld, met al hun context. Bij de overheid vinden begrippen in onze democratische rechtstaat hun oorsprong in wet- en regelgeving. Overheidsregistraties zijn concrete implementaties van deze wet- en regelgeving. Een open en transparante overheid heeft een open en transparant platform nodig waarop begrippen en registraties worden beschreven. Maar ook voor bedrijven die in een open samenwerkingsomgeving werken, zoals in de bouw is een dergelijk platform bruikbaar.

Deze beschrijvingen vormen de basis voor een stelselcatalogus. Doordat algemeen aanvaarde, open webstandaarden worden gebruikt is de inhoud voor iedereen toegankelijk, zonder afhankelijkheden van specifieke leveranciers. Daarmee ontstaan een open, transparant speelveld waarin deze data door belanghebbenden kunnen worden gebruikt, dan wel wordt uitgelegd onder welke condities sommige data (niet) kunnen of mogen worden gebruikt. Per domein zoals het domein van de basisregistraties of het domein van de Omgevingswet wordt dit speelveld beschreven in een stelselcatalogus die beschrijft welke informatie waar in dit stelsel en onder welke condities beschikbaar is. Een transparante digitale overheid kan worden vormgegeven als een digitaal stelsel van dergelijke stelsels met ieder hun eigen stelselcatalogus. Maar dit speelveld is niet voorbehouden aan overheden. In een open stelsel kunnen ook marktpartijen deelnemen, maar dergelijke digitale stelsels zijn ook relevant voor andere sectoren zoals de zorg of de bouw.
Ook BP4mc2 zelf is open. Iedereen wordt dan ook uitgenodigd om een bijdrage te leveren aan het verbeteren en optimaliseren van BP4mc2.

## Opbouw van deze website

Hoofdstuk 2 geeft een overzicht van de belangrijkste elementen in BP4mc2. In de volgende hoofdstukken worden al deze elementen uitgediept. Dat gebeurt aan de hand van het raamwerk van Seligman, Wijers en Sol. In dit raamwerk worden vier aspecten van een methode onderscheiden [[MSISD]]:

* Hoofdstuk 3 beschrijft de denkwijze (way of thinking), het theoretisch kader dat we hebben gebruikt bij het uitwerken van onze methode;
* Hoofdstuk 4 beschrijft de modelleringswijze (way of modelling). Dit hoofstuk geeft een beschrijving van de gebruikte vocabulaires en modellen en de wijze waarop deze modellen gerepresenteerd kunnen worden;
* Hoofdstuk 5 beschrijft de werkwijze (way of working). Het geeft practische richtlijnen hoe je BP4mc2 kunt toepassen;
* Hoofdstuk 6 beschrijft de ondersteuning (way of supporting), aan de hand van een concrete implementatie van BP4mc2.

## Schrijfconventies

**Dubbele of enkele quotes**

Deze website gaat voor een groot deel over taal en het gebruik van woorden (termen) om begrippen aan te duiden. We maken dan ook regelmatig onderscheid tussen een begrip en de term die we gebruiken om dat begrip mee aan te duiden. Om niet steeds expliciet te hoeven benoemen of we de term of het begrip bedoelen maken we gebruik van enkele of dubbele aanhalingstekens.

We gebruiken dubbele aanhalingstekens om een letterlijke (letter voor letter zo gespelde) term aan te geven, bijvoorbeeld "Marco Polo" en soms ook om een letterlijk citaat weer te geven.

We gebruiken enkele aanhalingstekens om aan te geven dat we een begrip gebruiken en soms ook om aan te geven dat een woord niet letterlijk maar min of meer figuurlijk wordt gebruikt of om voorbeeldzinnen aan te geven waar het om de strekking van de zin en niet de letterlijke formulering van de zin gaat.

**Linked Data met of zonder beginhoofdletters**

Als we het over 'Linked Data' als methode hebben, dan gebruiken we hoofdletters. Hebben we het daarentegen over 'linked data' als een verzameling gegevens die gelinkt is volgens de Linked Data principes, dan gebruiken we kleine letters.

**(Linked) data: enkelvoud of meervoud**

'Linked Data', de methode dus, is enkelvoud. Als we 'data' bedoelen als 'een verzameling gegevens' dan is het ook enkelvoud, maar als we het bedoelen als 'telbare gegevens' dan meervoud.
