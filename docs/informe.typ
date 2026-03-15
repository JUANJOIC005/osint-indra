#set document(
  title: "Análisis OSINT pasivo de INDRA",
  author: "JUANJOIC005"
)

= Resumen

Este informe presenta un análisis de inteligencia de fuentes abiertas (OSINT) realizado sobre la empresa Indra Group, perteneciente al IBEX35. El objetivo del estudio es identificar información pública relacionada con la presencia digital de la organización mediante técnicas de reconocimiento pasivo. Durante la investigación se analizaron dominios, subdominios, certificados digitales, infraestructura visible, tecnologías web y documentos públicos disponibles en Internet. El análisis se realizó sin interacción directa con los sistemas de la organización, utilizando únicamente fuentes abiertas y herramientas OSINT.

#pagebreak()

= Índice

#outline()

#pagebreak()

= Introducción

La inteligencia de fuentes abiertas (OSINT, Open Source Intelligence) es una disciplina ampliamente utilizada en ciberseguridad para recopilar y analizar información disponible públicamente sobre una organización. Este tipo de análisis permite comprender la superficie de exposición digital de una entidad y detectar posibles activos accesibles desde Internet.

En el ámbito de la seguridad informática, el reconocimiento pasivo constituye la primera fase de cualquier proceso de análisis o auditoría de seguridad. A través de este enfoque se recopila información pública sin realizar interacción directa con los sistemas objetivo, evitando así alterar su funcionamiento o generar actividad detectable.

En este trabajo se ha realizado un análisis OSINT pasivo sobre la empresa Indra Group, una multinacional española del sector tecnológico y de defensa. El objetivo es identificar información pública sobre su infraestructura digital, tecnologías utilizadas y posibles activos expuestos en Internet.

= Desarrollo

== Metodología

La investigación se llevó a cabo mediante técnicas de reconocimiento pasivo utilizando diferentes herramientas OSINT. En primer lugar, se identificaron los dominios asociados a la organización y se analizó su información WHOIS. Posteriormente se realizó un proceso de enumeración pasiva de subdominios mediante diversas herramientas especializadas.

Además, se analizaron registros de transparencia de certificados digitales, resolución DNS para identificar direcciones IP asociadas y tecnologías web utilizadas por la organización. Finalmente, se buscaron documentos públicos disponibles en el dominio corporativo para analizar posibles metadatos.

Todas las técnicas utilizadas se realizaron exclusivamente mediante fuentes abiertas, sin realizar escaneos activos ni interacción directa con los sistemas de la organización.

== Herramientas utilizadas

== Herramientas utilizadas

Durante el análisis se emplearon diversas herramientas de reconocimiento pasivo como Subfinder @subfinder, Amass @amass, DNSX @dnsx, WhatWeb @whatweb, ExifTool @exiftool y theHarvester @harvester. Asimismo, se utilizaron registros de transparencia de certificados mediante la plataforma crt.sh @crtsh.

= Resultados

== Dominio principal

El dominio principal identificado para la organización es:

- indragroup.com

El análisis WHOIS del dominio revela que fue registrado el 28 de julio de 2023 a través del registrador Tucows Domains Inc. Además, los servidores DNS asociados pertenecen al dominio indra.es, lo que indica que la organización gestiona parte de su infraestructura DNS bajo su propio dominio corporativo.






== Subdominios identificados

Durante el proceso de enumeración pasiva se identificaron diversos subdominios asociados al dominio principal.

| Subdominio | Posible función |
|---|---|
| airtraffic.indragroup.com | Sistemas de gestión de tráfico aéreo |
| defence.indragroup.com | División de defensa |
| mobility.indragroup.com | Soluciones de transporte |
| quantum.indragroup.com | Investigación en tecnologías cuánticas |
| space.indragroup.com | División aeroespacial |
| go.info.indragroup.com | Comunicación y marketing |
| www.indragroup.com | Página web principal |

La presencia de subdominios asociados a diferentes áreas tecnológicas refleja una infraestructura web segmentada según las distintas líneas de negocio de la empresa.

== Certificados digitales

El análisis de los registros de transparencia de certificados mediante la plataforma crt.sh permitió identificar la existencia de certificados wildcard asociados al dominio analizado.

Entre los certificados identificados destacan:

- *.indragroup.com
- *.quantum.indragroup.com

El uso de certificados wildcard permite proteger múltiples subdominios bajo un único certificado TLS, lo que sugiere la posible existencia de subdominios adicionales no visibles públicamente.

== Infraestructura e IPs detectadas

Mediante resolución DNS se identificaron diversas direcciones IP asociadas a los subdominios detectados.

| Subdominio | Infraestructura |
|---|---|
| www.indragroup.com | AWS |
| defence.indragroup.com | AWS CloudFront |
| mobility.indragroup.com | AWS CloudFront |
| airtraffic.indragroup.com | AWS |
| space.indragroup.com | AWS |
| go.info.indragroup.com | AWS |

Las direcciones IP identificadas pertenecen a rangos asociados a Amazon Web Services (AWS), lo que indica que la organización utiliza infraestructura cloud para el despliegue de sus servicios web. Asimismo, se observó el uso de Amazon CloudFront como red de distribución de contenido (CDN).

== Tecnologías web identificadas

El análisis de la página principal mediante herramientas de fingerprinting web permitió identificar diversas tecnologías utilizadas por la organización.

| Tecnología | Descripción |
|---|---|
| HTML5 | Estándar moderno de desarrollo web |
| Google Tag Manager | Gestión de analítica y etiquetas |
| Open Graph Protocol | Integración con redes sociales |

Además, se detectaron cabeceras de seguridad como Strict-Transport-Security, Content-Security-Policy y X-Frame-Options, lo que indica la implementación de diversas medidas de seguridad web.

== Documentos públicos

Mediante técnicas de búsqueda avanzada se identificaron documentos PDF públicos asociados al dominio analizado. El análisis de metadatos realizado con ExifTool no reveló información sensible adicional como autores o software de creación, lo que sugiere una correcta gestión de los metadatos antes de la publicación de documentos.

= Conclusiones

El análisis OSINT realizado permitió identificar diversos activos digitales asociados a la empresa Indra Group mediante técnicas de reconocimiento pasivo. Los resultados muestran que la organización utiliza una infraestructura cloud basada en Amazon Web Services y emplea servicios de CDN como Amazon CloudFront para distribuir su contenido web.

Asimismo, se observó una estructura de subdominios alineada con las distintas áreas tecnológicas de la empresa, lo que refleja una organización segmentada de sus servicios digitales. El análisis también mostró la implementación de diversas medidas de seguridad web y una correcta gestión de metadatos en documentos públicos.

Este tipo de análisis demuestra cómo la información disponible públicamente puede proporcionar una visión general de la infraestructura digital de una organización, lo que resalta la importancia de gestionar adecuadamente la exposición de activos en Internet.

= Bibliografía

#bibliography("referencias.bib")
