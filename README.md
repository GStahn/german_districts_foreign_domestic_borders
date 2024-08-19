***Files and Variables***

**Important**: Territory status of all districts (NUTS-3) is August, 2020. Any changes beforehand or afterwards are not included. 

**Border_Bavaria_internal+others.xlsx**: Contains all Bavarian districts, which have at least one foreign and/or domestic border. 
  - BL: Name of the federal state (_Bundesland_)
  - LK: Name of the district (_Kreis_)
  - ID_LK: Community Identification Number (_Kreisschlüssel_)
  - district_type: Type of district (either _Landkreis_ or _Kreisfreie Stadt_)
  - Source: [Wikimedia Bayern](https://bit.ly/2CQuG4h) 

**Border_Germany_with_Bavaria.xlsx**: Contains all German districts outside of Bavaria, which share at least one border with Bavaria. 
  - BL: Name of the federal state (_Bundesland_)
  - LK: Name of the district (_Kreis_)
  - ID_LK: Community Identification Number (_Kreisschlüssel_)
  - district_type: Type of district (either _Landkreis_ or _Kreisfreie Stadt_)
  - Source: [Wikipedia](https://de.wikipedia.org/wiki/Landkreis#/media/Datei:Germany,_administrative_divisions_(+districts)_-_de_-_colored.svg)

**Border_Germany_with_others.xlsx**: Contains all German districts, which share at least one border with another country. 
  - BL: Name of the federal state (_Bundesland_)
  - LK: Name of the district (_Kreis_)
  - ID_LK: Community Identification Number (_Kreisschlüssel_)
  - district_type: Type of district (either _Landkreis_ or _Kreisfreie Stadt_)
  - Source: [Wikipedia](https://de.wikipedia.org/wiki/Landkreis#/media/Datei:Germany,_administrative_divisions_(+districts)_-_de_-_colored.svg)

**All_german_districts.xlsx**: Contains all German districts as of August, 2020
  - ID_LK: Community Identification Number (_Kreisschlüssel_)
  - LK: Name of the district (_Kreis_)

***Example: How to create identifiers based on the data with Stata (Version 16)***

The do-file provides a way of creating binary variables indicating, if a specific districts shares at least one foreign border and/or a domestic border with Bavaria. 
Output file: _All_german_bavarian_districts_border_indicators.dta_

***Licence***:

MIT License: Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
