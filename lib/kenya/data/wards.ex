defmodule Kenya.Data.Wards do
  @moduledoc """
  Compiled ward data for Kenya.

  This module contains the complete list of Kenya's 1450 wards with their
  associated constituency and county codes using proper Kenyan coding system.

  Data source: https://github.com/pkiage/data-Kenya-Counties-Constituencies-Wards
  """

  alias Kenya
  alias Kenya.Ward
  alias Kenya.Data.Utils

  @wards [
    %Ward{
      code: "0001",
      name: "Port Reitz",
      constituency_code: "001",
      county_code: "001",
      residential_areas: ["Portreitz Estate", "Mikindani", "Tudor", "Bamburi"]
    },
    %Ward{
      code: "0002",
      name: "Kipevu",
      constituency_code: "001",
      county_code: "001",
      residential_areas: ["Kipevu Estate", "Chaani", "Miritini", "Changamwe"]
    },
    %Ward{
      code: "0003",
      name: "Airport",
      constituency_code: "001",
      county_code: "001",
      residential_areas: ["Airport Estate", "Mwembe Legeza", "Mombasa CBD"]
    },
    %Ward{
      code: "0004",
      name: "Changamwe",
      constituency_code: "001",
      county_code: "001",
      residential_areas: ["Changamwe Township", "Buxton", "Magongo", "Chaani"]
    },
    %Ward{
      code: "0005",
      name: "Chaani",
      constituency_code: "001",
      county_code: "001",
      residential_areas: ["Chaani Estate", "Kipevu Junction", "Miritini"]
    },
    %Ward{
      code: "0006",
      name: "Jomvu Kuu",
      constituency_code: "002",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0007",
      name: "Miritini",
      constituency_code: "002",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0008",
      name: "Mikindani",
      constituency_code: "002",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0009",
      name: "Mjambere",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0010",
      name: "Junda",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0011",
      name: "Bamburi",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0012",
      name: "Mwakirunge",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0013",
      name: "Mtopanga",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0014",
      name: "Magogoni",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0015",
      name: "Shanzu",
      constituency_code: "003",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0016",
      name: "Frere Town",
      constituency_code: "004",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0017",
      name: "ZIWA LA NG'OMBE",
      constituency_code: "004",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0018",
      name: "Mkomani",
      constituency_code: "004",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0019",
      name: "Kongowea",
      constituency_code: "004",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0020",
      name: "Kadzandani",
      constituency_code: "004",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0021",
      name: "Mtongwe",
      constituency_code: "005",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0022",
      name: "Shika Adabu",
      constituency_code: "005",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0023",
      name: "Bofu",
      constituency_code: "005",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0024",
      name: "Likoni",
      constituency_code: "005",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0025",
      name: "Timbwani",
      constituency_code: "005",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0026",
      name: "MJI WA KALE/MAKADARA",
      constituency_code: "006",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0027",
      name: "Tudor",
      constituency_code: "006",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0028",
      name: "Tononoka",
      constituency_code: "006",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0029",
      name: "SHIMANZI/GANJONI",
      constituency_code: "006",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0030",
      name: "Majengo",
      constituency_code: "006",
      county_code: "001",
      residential_areas: []
    },
    %Ward{
      code: "0031",
      name: "Gombatobongwe",
      constituency_code: "007",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0032",
      name: "Ukunda",
      constituency_code: "007",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0033",
      name: "Kinondo",
      constituency_code: "007",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0034",
      name: "Ramisi",
      constituency_code: "007",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0035",
      name: "Pongwekikoneni",
      constituency_code: "008",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0036",
      name: "Dzombo",
      constituency_code: "008",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0037",
      name: "Mwereni",
      constituency_code: "008",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0038",
      name: "Vanga",
      constituency_code: "008",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0039",
      name: "Tsimba Golini",
      constituency_code: "009",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0040",
      name: "Waa",
      constituency_code: "009",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0041",
      name: "Tiwi",
      constituency_code: "009",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0042",
      name: "Kubo South",
      constituency_code: "009",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0043",
      name: "Mkongani",
      constituency_code: "009",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0044",
      name: "Nadavaya",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0045",
      name: "Puma",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0046",
      name: "Kinango",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0047",
      name: "MACKINNON-ROAD",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0048",
      name: "CHENGONI/SAMBURU",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0049",
      name: "Mwavumbo",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0050",
      name: "Kasemeni",
      constituency_code: "010",
      county_code: "002",
      residential_areas: []
    },
    %Ward{
      code: "0051",
      name: "Tezo",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0052",
      name: "Sokoni",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0053",
      name: "Kibarani",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0054",
      name: "Dabaso",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0055",
      name: "Matsangoni",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0056",
      name: "Watamu",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0057",
      name: "Mnarani",
      constituency_code: "011",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0058",
      name: "Junju",
      constituency_code: "012",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0059",
      name: "Mwarakaya",
      constituency_code: "012",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0060",
      name: "Shimo La Tewa",
      constituency_code: "012",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0061",
      name: "Chasimba",
      constituency_code: "012",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0062",
      name: "Mtepeni",
      constituency_code: "012",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0063",
      name: "Mariakani",
      constituency_code: "013",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0064",
      name: "Kayafungo",
      constituency_code: "013",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0065",
      name: "Kaloleni",
      constituency_code: "013",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0066",
      name: "Mwanamwinga",
      constituency_code: "013",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0067",
      name: "Mwawesa",
      constituency_code: "014",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0068",
      name: "Ruruma",
      constituency_code: "014",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0069",
      name: "KAMBE/RIBE",
      constituency_code: "014",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0070",
      name: "RABAI/KISURUTINI",
      constituency_code: "014",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0071",
      name: "Ganze",
      constituency_code: "015",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0072",
      name: "Bamba",
      constituency_code: "015",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0073",
      name: "Jaribuni",
      constituency_code: "015",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0074",
      name: "Sokoke",
      constituency_code: "015",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0075",
      name: "Jilore",
      constituency_code: "016",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0076",
      name: "Kakuyuni",
      constituency_code: "016",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0077",
      name: "Ganda",
      constituency_code: "016",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0078",
      name: "Malindi Town",
      constituency_code: "016",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0079",
      name: "Shella",
      constituency_code: "016",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0080",
      name: "Marafa",
      constituency_code: "017",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0081",
      name: "Magarini",
      constituency_code: "017",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0082",
      name: "Gongoni",
      constituency_code: "017",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0083",
      name: "Adu",
      constituency_code: "017",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0084",
      name: "Garashi",
      constituency_code: "017",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0085",
      name: "Sabaki",
      constituency_code: "017",
      county_code: "003",
      residential_areas: []
    },
    %Ward{
      code: "0086",
      name: "Kipini East",
      constituency_code: "018",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0087",
      name: "Garsen South",
      constituency_code: "018",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0088",
      name: "Kipini West",
      constituency_code: "018",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0089",
      name: "Garsen Central",
      constituency_code: "018",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0090",
      name: "Garsen West",
      constituency_code: "018",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0091",
      name: "Garsen North",
      constituency_code: "018",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0092",
      name: "Kinakomba",
      constituency_code: "019",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0093",
      name: "Mikinduni",
      constituency_code: "019",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0094",
      name: "Chewani",
      constituency_code: "019",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0095",
      name: "Wayu",
      constituency_code: "019",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0096",
      name: "Chewele",
      constituency_code: "020",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0097",
      name: "Bura",
      constituency_code: "020",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0098",
      name: "Bangale",
      constituency_code: "020",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0099",
      name: "Sala",
      constituency_code: "020",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0100",
      name: "Madogo",
      constituency_code: "020",
      county_code: "004",
      residential_areas: []
    },
    %Ward{
      code: "0101",
      name: "Faza",
      constituency_code: "021",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0102",
      name: "Kiunga",
      constituency_code: "021",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0103",
      name: "Basuba",
      constituency_code: "021",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0104",
      name: "Shella",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0105",
      name: "Mkomani",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0106",
      name: "Hindi",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0107",
      name: "Mkunumbi",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0108",
      name: "Hongwe",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0109",
      name: "Witu",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0110",
      name: "Bahari",
      constituency_code: "022",
      county_code: "005",
      residential_areas: []
    },
    %Ward{
      code: "0111",
      name: "Chala",
      constituency_code: "023",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0112",
      name: "Mahoo",
      constituency_code: "023",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0113",
      name: "Bomeni",
      constituency_code: "023",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0114",
      name: "Mboghoni",
      constituency_code: "023",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0115",
      name: "Mata",
      constituency_code: "023",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0116",
      name: "WUNDANYI/MBALE",
      constituency_code: "024",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0117",
      name: "Werugha",
      constituency_code: "024",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0118",
      name: "WUMINGU/KISHUSHE",
      constituency_code: "024",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0119",
      name: "MWANDA/MGANGE",
      constituency_code: "024",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0120",
      name: "RONG'E",
      constituency_code: "025",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0121",
      name: "Mwatate",
      constituency_code: "025",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0122",
      name: "Bura",
      constituency_code: "025",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0123",
      name: "Chawia",
      constituency_code: "025",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0124",
      name: "WUSI/KISHAMBA",
      constituency_code: "025",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0125",
      name: "Mbololo",
      constituency_code: "026",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0126",
      name: "Sagalla",
      constituency_code: "026",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0127",
      name: "Kaloleni",
      constituency_code: "026",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0128",
      name: "Marungu",
      constituency_code: "026",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0129",
      name: "Kasigau",
      constituency_code: "026",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0130",
      name: "Ngolia",
      constituency_code: "026",
      county_code: "006",
      residential_areas: []
    },
    %Ward{
      code: "0131",
      name: "Waberi",
      constituency_code: "027",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0132",
      name: "Galbet",
      constituency_code: "027",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0133",
      name: "Township",
      constituency_code: "027",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0134",
      name: "Iftin",
      constituency_code: "027",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0135",
      name: "Balambala",
      constituency_code: "028",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0136",
      name: "Danyere",
      constituency_code: "028",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0137",
      name: "Jara Jara",
      constituency_code: "028",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0138",
      name: "Saka",
      constituency_code: "028",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0139",
      name: "Sankuri",
      constituency_code: "028",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0140",
      name: "Modogashe",
      constituency_code: "029",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0141",
      name: "Benane",
      constituency_code: "029",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0142",
      name: "Goreale",
      constituency_code: "029",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0143",
      name: "Maalimin",
      constituency_code: "029",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0144",
      name: "Sabena",
      constituency_code: "029",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0145",
      name: "Baraki",
      constituency_code: "029",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0146",
      name: "Dertu",
      constituency_code: "030",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0147",
      name: "Dadaab",
      constituency_code: "030",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0148",
      name: "Labasigale",
      constituency_code: "030",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0149",
      name: "Damajale",
      constituency_code: "030",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0150",
      name: "Liboi",
      constituency_code: "030",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0151",
      name: "Abakaile",
      constituency_code: "030",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0152",
      name: "Bura",
      constituency_code: "031",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0153",
      name: "Dekaharia",
      constituency_code: "031",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0154",
      name: "Jarajila",
      constituency_code: "031",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0155",
      name: "Fafi",
      constituency_code: "031",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0156",
      name: "Nanighi",
      constituency_code: "031",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0157",
      name: "Hulugho",
      constituency_code: "032",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0158",
      name: "Sangailu",
      constituency_code: "032",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0159",
      name: "Ijara",
      constituency_code: "032",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0160",
      name: "Masalani",
      constituency_code: "032",
      county_code: "007",
      residential_areas: []
    },
    %Ward{
      code: "0161",
      name: "Gurar",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0162",
      name: "Bute",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0163",
      name: "Korondile",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0164",
      name: "Malkagufu",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0165",
      name: "Batalu",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0166",
      name: "Danaba",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0167",
      name: "Godoma",
      constituency_code: "033",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0168",
      name: "Wagberi",
      constituency_code: "034",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0169",
      name: "Township",
      constituency_code: "034",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0170",
      name: "Barwago",
      constituency_code: "034",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0171",
      name: "KHOROF/HARAR",
      constituency_code: "034",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0172",
      name: "Elben",
      constituency_code: "035",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0173",
      name: "Sarman",
      constituency_code: "035",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0174",
      name: "Tarbaj",
      constituency_code: "035",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0175",
      name: "Wargadud",
      constituency_code: "035",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0176",
      name: "Arbajahan",
      constituency_code: "036",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0177",
      name: "HADADO/ATHIBOHOL",
      constituency_code: "036",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0178",
      name: "Ademasajide",
      constituency_code: "036",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0179",
      name: "WAGALLA/GANYURE",
      constituency_code: "036",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0180",
      name: "Eldas",
      constituency_code: "037",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0181",
      name: "Della",
      constituency_code: "037",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0182",
      name: "LAKOLEY SOUTH/BASIR",
      constituency_code: "037",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0183",
      name: "ELNUR/TULA TULA",
      constituency_code: "037",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0184",
      name: "Benane",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0185",
      name: "Burder",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0186",
      name: "Dadaja Bulla",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0187",
      name: "Habasswein",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0188",
      name: "Lagboghol South",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0189",
      name: "Ibrahim Ure",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0190",
      name: "Diif",
      constituency_code: "038",
      county_code: "008",
      residential_areas: []
    },
    %Ward{
      code: "0191",
      name: "Takaba South",
      constituency_code: "039",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0192",
      name: "Takaba",
      constituency_code: "039",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0193",
      name: "Lag Sure",
      constituency_code: "039",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0194",
      name: "Dandu",
      constituency_code: "039",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0195",
      name: "Gither",
      constituency_code: "039",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0196",
      name: "Banissa",
      constituency_code: "040",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0197",
      name: "Derkhale",
      constituency_code: "040",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0198",
      name: "Guba",
      constituency_code: "040",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0199",
      name: "Malkamari",
      constituency_code: "040",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0200",
      name: "Kiliwehiri",
      constituency_code: "040",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0201",
      name: "Ashabito",
      constituency_code: "041",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0202",
      name: "Guticha",
      constituency_code: "041",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0203",
      name: "Morothile",
      constituency_code: "041",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0204",
      name: "Rhamu",
      constituency_code: "041",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0205",
      name: "RHAMU-DIMTU",
      constituency_code: "041",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0206",
      name: "Wargudud",
      constituency_code: "042",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0207",
      name: "Kutulo",
      constituency_code: "042",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0208",
      name: "Elwak South",
      constituency_code: "042",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0209",
      name: "Elwak North",
      constituency_code: "042",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0210",
      name: "Shimbir Fatuma",
      constituency_code: "042",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0211",
      name: "Arabia",
      constituency_code: "043",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0212",
      name: "Bulla Mpya",
      constituency_code: "043",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0213",
      name: "Khalalio",
      constituency_code: "043",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0214",
      name: "Neboi",
      constituency_code: "043",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0215",
      name: "Township",
      constituency_code: "043",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0216",
      name: "Libehia",
      constituency_code: "044",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0217",
      name: "Fino",
      constituency_code: "044",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0218",
      name: "Lafey",
      constituency_code: "044",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0219",
      name: "Warankara",
      constituency_code: "044",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0220",
      name: "Alungo Gof",
      constituency_code: "044",
      county_code: "009",
      residential_areas: []
    },
    %Ward{
      code: "0221",
      name: "Butiye",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0222",
      name: "Sololo",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0223",
      name: "HEILU-MANYATTA",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0224",
      name: "Golbo",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0225",
      name: "Moyale Township",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0226",
      name: "Uran",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0227",
      name: "Obbu",
      constituency_code: "045",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0228",
      name: "Illeret",
      constituency_code: "046",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0229",
      name: "North Horr",
      constituency_code: "046",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0230",
      name: "Dukana",
      constituency_code: "046",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0231",
      name: "Maikona",
      constituency_code: "046",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0232",
      name: "Turbi",
      constituency_code: "046",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0233",
      name: "SAGANTE/JALDESA",
      constituency_code: "047",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0234",
      name: "Karare",
      constituency_code: "047",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0235",
      name: "Marsabit Central",
      constituency_code: "047",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0236",
      name: "Loiyangalani",
      constituency_code: "048",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0237",
      name: "KARGI/SOUTH HORR",
      constituency_code: "048",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0238",
      name: "KORR/NGURUNIT",
      constituency_code: "048",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0239",
      name: "Log Logo",
      constituency_code: "048",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0240",
      name: "Laisamis",
      constituency_code: "048",
      county_code: "010",
      residential_areas: []
    },
    %Ward{
      code: "0241",
      name: "Wabera",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0242",
      name: "Bulla Pesa",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0243",
      name: "Chari",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0244",
      name: "Cherab",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0245",
      name: "Ngare Mara",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0246",
      name: "Burat",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0247",
      name: "Oldonyiro",
      constituency_code: "049",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0248",
      name: "Garbatulla",
      constituency_code: "050",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0249",
      name: "Kinna",
      constituency_code: "050",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0250",
      name: "Sericho",
      constituency_code: "050",
      county_code: "011",
      residential_areas: []
    },
    %Ward{
      code: "0251",
      name: "Maua",
      constituency_code: "051",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0252",
      name: "KIEGOI/ANTUBOCHIU",
      constituency_code: "051",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0253",
      name: "Athiru Gaiti",
      constituency_code: "051",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0254",
      name: "Akachiu",
      constituency_code: "051",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0255",
      name: "Kanuni",
      constituency_code: "051",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0256",
      name: "AKIRANG'ONDU",
      constituency_code: "052",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0257",
      name: "Athiru Ruujine",
      constituency_code: "052",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0258",
      name: "Igembe East",
      constituency_code: "052",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0259",
      name: "Njia",
      constituency_code: "052",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0260",
      name: "Kangeta",
      constituency_code: "052",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0261",
      name: "Antuambui",
      constituency_code: "053",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0262",
      name: "Ntunene",
      constituency_code: "053",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0263",
      name: "Antubetwe Kiongo",
      constituency_code: "053",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0264",
      name: "Naathu",
      constituency_code: "053",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0265",
      name: "Amwathi",
      constituency_code: "053",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0266",
      name: "Athwana",
      constituency_code: "054",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0267",
      name: "Akithii",
      constituency_code: "054",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0268",
      name: "Kianjai",
      constituency_code: "054",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0269",
      name: "Nkomo",
      constituency_code: "054",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0270",
      name: "Mbeu",
      constituency_code: "054",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0271",
      name: "Thangatha",
      constituency_code: "055",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0272",
      name: "Mikinduri",
      constituency_code: "055",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0273",
      name: "Kiguchwa",
      constituency_code: "055",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0274",
      name: "Muthara",
      constituency_code: "055",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0275",
      name: "Karama",
      constituency_code: "055",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0276",
      name: "Municipality",
      constituency_code: "056",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0277",
      name: "Ntima East",
      constituency_code: "056",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0278",
      name: "Ntima West",
      constituency_code: "056",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0279",
      name: "Nyaki West",
      constituency_code: "056",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0280",
      name: "Nyaki East",
      constituency_code: "056",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0281",
      name: "Timau",
      constituency_code: "057",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0282",
      name: "Kisima",
      constituency_code: "057",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0283",
      name: "KIIRUA/NAARI",
      constituency_code: "057",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0284",
      name: "RUIRI/RWARERA",
      constituency_code: "057",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0285",
      name: "Kibirichia",
      constituency_code: "057",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0286",
      name: "Mwanganthia",
      constituency_code: "058",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0287",
      name: "Abothuguchi Central",
      constituency_code: "058",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0288",
      name: "Abothuguchi West",
      constituency_code: "058",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0289",
      name: "Kiagu",
      constituency_code: "058",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0290",
      name: "Mitunguu",
      constituency_code: "059",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0291",
      name: "Igoji East",
      constituency_code: "059",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0292",
      name: "Igoji West",
      constituency_code: "059",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0293",
      name: "Abogeta East",
      constituency_code: "059",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0294",
      name: "Abogeta West",
      constituency_code: "059",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0295",
      name: "Nkuene",
      constituency_code: "059",
      county_code: "012",
      residential_areas: []
    },
    %Ward{
      code: "0296",
      name: "Mitheru",
      constituency_code: "060",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0297",
      name: "Muthambi",
      constituency_code: "060",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0298",
      name: "Mwimbi",
      constituency_code: "060",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0299",
      name: "Ganga",
      constituency_code: "060",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0300",
      name: "Chogoria",
      constituency_code: "060",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0301",
      name: "Mariani",
      constituency_code: "061",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0302",
      name: "Karingani",
      constituency_code: "061",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0303",
      name: "Magumoni",
      constituency_code: "061",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0304",
      name: "Mugwe",
      constituency_code: "061",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0305",
      name: "IGAMBANG'OMBE",
      constituency_code: "061",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0306",
      name: "Gatunga",
      constituency_code: "062",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0307",
      name: "Mukothima",
      constituency_code: "062",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0308",
      name: "Nkondi",
      constituency_code: "062",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0309",
      name: "Chiakariga",
      constituency_code: "062",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0310",
      name: "Marimanti",
      constituency_code: "062",
      county_code: "013",
      residential_areas: []
    },
    %Ward{
      code: "0311",
      name: "RUGURU/NGANDORI",
      constituency_code: "063",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0312",
      name: "Kithimu",
      constituency_code: "063",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0313",
      name: "Nginda",
      constituency_code: "063",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0314",
      name: "Mbeti North",
      constituency_code: "063",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0315",
      name: "Kirimari",
      constituency_code: "063",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0316",
      name: "Gaturi South",
      constituency_code: "063",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0317",
      name: "Gaturi North",
      constituency_code: "064",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0318",
      name: "Kagaari South",
      constituency_code: "064",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0319",
      name: "Central Ward",
      constituency_code: "064",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0320",
      name: "Kagaari North",
      constituency_code: "064",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0321",
      name: "Kyeni North",
      constituency_code: "064",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0322",
      name: "Kyeni South",
      constituency_code: "064",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0323",
      name: "Mwea",
      constituency_code: "065",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0324",
      name: "Makima",
      constituency_code: "065",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0325",
      name: "Mbeti South",
      constituency_code: "065",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0326",
      name: "Mavuria",
      constituency_code: "065",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0327",
      name: "Kiambere",
      constituency_code: "065",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0328",
      name: "Nthawa",
      constituency_code: "066",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0329",
      name: "Muminji",
      constituency_code: "066",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0330",
      name: "Evurore",
      constituency_code: "066",
      county_code: "014",
      residential_areas: []
    },
    %Ward{
      code: "0331",
      name: "Ngomeni",
      constituency_code: "067",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0332",
      name: "Kyuso",
      constituency_code: "067",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0333",
      name: "Mumoni",
      constituency_code: "067",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0334",
      name: "Tseikuru",
      constituency_code: "067",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0335",
      name: "Tharaka",
      constituency_code: "067",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0336",
      name: "KYOME/THAANA",
      constituency_code: "068",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0337",
      name: "Nguutani",
      constituency_code: "068",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0338",
      name: "Migwani",
      constituency_code: "068",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0339",
      name: "KIOMO/KYETHANI",
      constituency_code: "068",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0340",
      name: "Central",
      constituency_code: "069",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0341",
      name: "Kivou",
      constituency_code: "069",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0342",
      name: "Nguni",
      constituency_code: "069",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0343",
      name: "Nuu",
      constituency_code: "069",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0344",
      name: "Mui",
      constituency_code: "069",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0345",
      name: "Waita",
      constituency_code: "069",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0346",
      name: "Mutonguni",
      constituency_code: "070",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0347",
      name: "Kauwi",
      constituency_code: "070",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0348",
      name: "Matinyani",
      constituency_code: "070",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0349",
      name: "KWA MUTONGA/KITHUMULA",
      constituency_code: "070",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0350",
      name: "Kisasi",
      constituency_code: "071",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0351",
      name: "Mbitini",
      constituency_code: "071",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0352",
      name: "KWAVONZA/YATTA",
      constituency_code: "071",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0353",
      name: "Kanyangi",
      constituency_code: "071",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0354",
      name: "Miambani",
      constituency_code: "072",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0355",
      name: "Township",
      constituency_code: "072",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0356",
      name: "Kyangwithya West",
      constituency_code: "072",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0357",
      name: "Mulango",
      constituency_code: "072",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0358",
      name: "Kyangwithya East",
      constituency_code: "072",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0359",
      name: "ZOMBE/MWITIKA",
      constituency_code: "073",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0360",
      name: "Chuluni",
      constituency_code: "073",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0361",
      name: "Nzambani",
      constituency_code: "073",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0362",
      name: "VOO/KYAMATU",
      constituency_code: "073",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0363",
      name: "ENDAU/MALALANI",
      constituency_code: "073",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0364",
      name: "MUTITO/KALIKU",
      constituency_code: "073",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0365",
      name: "IKANGA/KYATUNE",
      constituency_code: "074",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0366",
      name: "Mutomo",
      constituency_code: "074",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0367",
      name: "Mutha",
      constituency_code: "074",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0368",
      name: "Ikutha",
      constituency_code: "074",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0369",
      name: "Kanziko",
      constituency_code: "074",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0370",
      name: "Athi",
      constituency_code: "074",
      county_code: "015",
      residential_areas: []
    },
    %Ward{
      code: "0371",
      name: "Kivaa",
      constituency_code: "075",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0372",
      name: "Masinga Central",
      constituency_code: "075",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0373",
      name: "Ekalakala",
      constituency_code: "075",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0374",
      name: "Muthesya",
      constituency_code: "075",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0375",
      name: "Ndithini",
      constituency_code: "075",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0376",
      name: "Ndalani",
      constituency_code: "076",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0377",
      name: "Matuu",
      constituency_code: "076",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0378",
      name: "Kithimani",
      constituency_code: "076",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0379",
      name: "Ikombe",
      constituency_code: "076",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0380",
      name: "Katangi",
      constituency_code: "076",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0381",
      name: "Kangundo North",
      constituency_code: "077",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0382",
      name: "Kangundo Central",
      constituency_code: "077",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0383",
      name: "Kangundo East",
      constituency_code: "077",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0384",
      name: "Kangundo West",
      constituency_code: "077",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0385",
      name: "Tala",
      constituency_code: "078",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0386",
      name: "Matungulu North",
      constituency_code: "078",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0387",
      name: "Matungulu East",
      constituency_code: "078",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0388",
      name: "Matungulu West",
      constituency_code: "078",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0389",
      name: "Kyeleni",
      constituency_code: "078",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0390",
      name: "Mitaboni",
      constituency_code: "079",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0391",
      name: "Kathiani Central",
      constituency_code: "079",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0392",
      name: "UPPER KAEWA/IVETI",
      constituency_code: "079",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0393",
      name: "LOWER KAEWA/KAANI",
      constituency_code: "079",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0394",
      name: "Athi River",
      constituency_code: "080",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0395",
      name: "Kinanie",
      constituency_code: "080",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0396",
      name: "Muthwani",
      constituency_code: "080",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0397",
      name: "SYOKIMAU/MULOLONGO",
      constituency_code: "080",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0398",
      name: "Kalama",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0399",
      name: "Mua",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0400",
      name: "Mutituni",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0401",
      name: "Machakos Central",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0402",
      name: "Mumbuni North",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0403",
      name: "MUVUTI/KIIMA-KIMWE",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0404",
      name: "Kola",
      constituency_code: "081",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0405",
      name: "Mbiuni",
      constituency_code: "082",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0406",
      name: "MAKUTANO/ MWALA",
      constituency_code: "082",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0407",
      name: "Masii",
      constituency_code: "082",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0408",
      name: "Muthetheni",
      constituency_code: "082",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0409",
      name: "Wamunyu",
      constituency_code: "082",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0410",
      name: "Kibauni",
      constituency_code: "082",
      county_code: "016",
      residential_areas: []
    },
    %Ward{
      code: "0411",
      name: "Tulimani",
      constituency_code: "083",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0412",
      name: "Mbooni",
      constituency_code: "083",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0413",
      name: "KITHUNGO/KITUNDU",
      constituency_code: "083",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0414",
      name: "KISAU/KITETA",
      constituency_code: "083",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0415",
      name: "WAIA/KAKO",
      constituency_code: "083",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0416",
      name: "Kalawa",
      constituency_code: "083",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0417",
      name: "Kasikeu",
      constituency_code: "084",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0418",
      name: "Mukaa",
      constituency_code: "084",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0419",
      name: "KIIMA KIU/KALANZONI",
      constituency_code: "084",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0420",
      name: "Ukia",
      constituency_code: "085",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0421",
      name: "Kee",
      constituency_code: "085",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0422",
      name: "Kilungu",
      constituency_code: "085",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0423",
      name: "Ilima",
      constituency_code: "085",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0424",
      name: "Wote",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0425",
      name: "MUVAU/KIKUUMINI",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0426",
      name: "Mavindini",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0427",
      name: "KITISE/KITHUKI",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0428",
      name: "Kathonzweni",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0429",
      name: "NZAUI/KILILI/KALAMBA",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0430",
      name: "Mbitini",
      constituency_code: "086",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0431",
      name: "Makindu",
      constituency_code: "087",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0432",
      name: "Nguumo",
      constituency_code: "087",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0433",
      name: "Kikumbulyu North",
      constituency_code: "087",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0434",
      name: "Kikumbulyu South",
      constituency_code: "087",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0435",
      name: "NGUU/MASUMBA",
      constituency_code: "087",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0436",
      name: "EMALI/MULALA",
      constituency_code: "087",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0437",
      name: "Masongaleni",
      constituency_code: "088",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0438",
      name: "Mtito Andei",
      constituency_code: "088",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0439",
      name: "Thange",
      constituency_code: "088",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0440",
      name: "IVINGONI/NZAMBANI",
      constituency_code: "088",
      county_code: "017",
      residential_areas: []
    },
    %Ward{
      code: "0441",
      name: "Engineer",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0442",
      name: "Gathara",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0443",
      name: "North Kinangop",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0444",
      name: "Murungaru",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0445",
      name: "NJABINI\KIBURU",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0446",
      name: "Nyakio",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0447",
      name: "Githabai",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0448",
      name: "Magumu",
      constituency_code: "089",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0449",
      name: "Wanjohi",
      constituency_code: "090",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0450",
      name: "Kipipiri",
      constituency_code: "090",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0451",
      name: "Geta",
      constituency_code: "090",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0452",
      name: "Githioro",
      constituency_code: "090",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0453",
      name: "Karau",
      constituency_code: "091",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0454",
      name: "Kanjuiri Ridge",
      constituency_code: "091",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0455",
      name: "Mirangine",
      constituency_code: "091",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0456",
      name: "Kaimbaga",
      constituency_code: "091",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0457",
      name: "Rurii",
      constituency_code: "091",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0458",
      name: "Gathanji",
      constituency_code: "092",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0459",
      name: "Gatimu",
      constituency_code: "092",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0460",
      name: "Weru",
      constituency_code: "092",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0461",
      name: "Charagita",
      constituency_code: "092",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0462",
      name: "Leshau Pondo",
      constituency_code: "093",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0463",
      name: "Kiriita",
      constituency_code: "093",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0464",
      name: "Central",
      constituency_code: "093",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0465",
      name: "Shamata",
      constituency_code: "093",
      county_code: "018",
      residential_areas: []
    },
    %Ward{
      code: "0466",
      name: "Dedan Kimanthi",
      constituency_code: "094",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0467",
      name: "Wamagana",
      constituency_code: "094",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0468",
      name: "AGUTHI/GAAKI",
      constituency_code: "094",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0469",
      name: "Mweiga",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0470",
      name: "Naromoru Kiamathaga",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0471",
      name: "MWIYOGO/ENDARASHA",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0472",
      name: "Mugunda",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0473",
      name: "Gatarakwa",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0474",
      name: "Thegu River",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0475",
      name: "Kabaru",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0476",
      name: "Gakawa",
      constituency_code: "095",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0477",
      name: "Ruguru",
      constituency_code: "096",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0478",
      name: "Magutu",
      constituency_code: "096",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0479",
      name: "Iriaini",
      constituency_code: "096",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0480",
      name: "Konyu",
      constituency_code: "096",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0481",
      name: "Kirimukuyu",
      constituency_code: "096",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0482",
      name: "Karatina Town",
      constituency_code: "096",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0483",
      name: "Mahiga",
      constituency_code: "097",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0484",
      name: "IRIA-INI",
      constituency_code: "097",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0485",
      name: "Chinga",
      constituency_code: "097",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0486",
      name: "Karima",
      constituency_code: "097",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0487",
      name: "Gikondi",
      constituency_code: "098",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0488",
      name: "Rugi",
      constituency_code: "098",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0489",
      name: "MUKURWE-INI WEST",
      constituency_code: "098",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0490",
      name: "MUKURWE-INI CENTRAL",
      constituency_code: "098",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0491",
      name: "KIGANJO/MATHARI",
      constituency_code: "099",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0492",
      name: "Rware",
      constituency_code: "099",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0493",
      name: "GATITU/MURUGURU",
      constituency_code: "099",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0494",
      name: "RURING'U",
      constituency_code: "099",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0495",
      name: "KAMAKWA/MUKARO",
      constituency_code: "099",
      county_code: "019",
      residential_areas: []
    },
    %Ward{
      code: "0496",
      name: "Mutithi",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0497",
      name: "Kangai",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0498",
      name: "Thiba",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0499",
      name: "Wamumu",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0500",
      name: "Nyangati",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0501",
      name: "Murinduko",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0502",
      name: "Gathigiriri",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0503",
      name: "Tebere",
      constituency_code: "100",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0504",
      name: "Kabare",
      constituency_code: "101",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0505",
      name: "Baragwi",
      constituency_code: "101",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0506",
      name: "Njukiini",
      constituency_code: "101",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0507",
      name: "Ngariama",
      constituency_code: "101",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0508",
      name: "Karumandi",
      constituency_code: "101",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0509",
      name: "Mukure",
      constituency_code: "102",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0510",
      name: "Kiine",
      constituency_code: "102",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0511",
      name: "Kariti",
      constituency_code: "102",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0512",
      name: "Mutira",
      constituency_code: "103",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0513",
      name: "KANYEKI-INI",
      constituency_code: "103",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0514",
      name: "Kerugoya",
      constituency_code: "103",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0515",
      name: "Inoi",
      constituency_code: "103",
      county_code: "020",
      residential_areas: []
    },
    %Ward{
      code: "0516",
      name: "Kanyenyaini",
      constituency_code: "104",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0517",
      name: "Muguru",
      constituency_code: "104",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0518",
      name: "Rwathia",
      constituency_code: "104",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0519",
      name: "Gitugi",
      constituency_code: "105",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0520",
      name: "Kiru",
      constituency_code: "105",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0521",
      name: "Kamacharia",
      constituency_code: "105",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0522",
      name: "Wangu",
      constituency_code: "106",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0523",
      name: "Mugoiri",
      constituency_code: "106",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0524",
      name: "Mbiri",
      constituency_code: "106",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0525",
      name: "Township",
      constituency_code: "106",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0526",
      name: "Murarandia",
      constituency_code: "106",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0527",
      name: "Gaturi",
      constituency_code: "106",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0528",
      name: "Kahumbu",
      constituency_code: "107",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0529",
      name: "Muthithi",
      constituency_code: "107",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0530",
      name: "Kigumo",
      constituency_code: "107",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0531",
      name: "Kangari",
      constituency_code: "107",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0532",
      name: "Kinyona",
      constituency_code: "107",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0533",
      name: "KIMORORI/WEMPA",
      constituency_code: "108",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0534",
      name: "Makuyu",
      constituency_code: "108",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0535",
      name: "Kambiti",
      constituency_code: "108",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0536",
      name: "Kamahuha",
      constituency_code: "108",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0537",
      name: "Ichagaki",
      constituency_code: "108",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0538",
      name: "Nginda",
      constituency_code: "108",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0539",
      name: "NG'ARARIA",
      constituency_code: "109",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0540",
      name: "Muruka",
      constituency_code: "109",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0541",
      name: "KAGUNDU-INI",
      constituency_code: "109",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0542",
      name: "Gaichanjiru",
      constituency_code: "109",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0543",
      name: "Ithiru",
      constituency_code: "109",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0544",
      name: "Ruchu",
      constituency_code: "109",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0545",
      name: "Ithanga",
      constituency_code: "110",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0546",
      name: "KAKUZI/MITUBIRI",
      constituency_code: "110",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0547",
      name: "MUGUMO-INI",
      constituency_code: "110",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0548",
      name: "KIHUMBU-INI",
      constituency_code: "110",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0549",
      name: "Gatanga",
      constituency_code: "110",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0550",
      name: "Kariara",
      constituency_code: "110",
      county_code: "021",
      residential_areas: []
    },
    %Ward{
      code: "0551",
      name: "Kiamwangi",
      constituency_code: "111",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0552",
      name: "Kiganjo",
      constituency_code: "111",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0553",
      name: "Ndarugu",
      constituency_code: "111",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0554",
      name: "Ngenda",
      constituency_code: "111",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0555",
      name: "Gituamba",
      constituency_code: "112",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0556",
      name: "Githobokoni",
      constituency_code: "112",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0557",
      name: "Chania",
      constituency_code: "112",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0558",
      name: "MANG'U",
      constituency_code: "112",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0559",
      name: "Murera",
      constituency_code: "113",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0560",
      name: "Theta",
      constituency_code: "113",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0561",
      name: "Juja",
      constituency_code: "113",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0562",
      name: "Witeithie",
      constituency_code: "113",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0563",
      name: "Kalimoni",
      constituency_code: "113",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0564",
      name: "Township",
      constituency_code: "114",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0565",
      name: "Kamenu",
      constituency_code: "114",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0566",
      name: "Hospital",
      constituency_code: "114",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0567",
      name: "Gatuanyaga",
      constituency_code: "114",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0568",
      name: "Ngoliba",
      constituency_code: "114",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0569",
      name: "Gitothua",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0570",
      name: "Biashara",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0571",
      name: "Gatongora",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0572",
      name: "Kahawa Sukari",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0573",
      name: "Kahawa Wendani",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0574",
      name: "Kiuu",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0575",
      name: "Mwiki",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0576",
      name: "Mwihoko",
      constituency_code: "115",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0577",
      name: "Githunguri",
      constituency_code: "116",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0578",
      name: "Githiga",
      constituency_code: "116",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0579",
      name: "Ikinu",
      constituency_code: "116",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0580",
      name: "Ngewa",
      constituency_code: "116",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0581",
      name: "Komothai",
      constituency_code: "116",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0582",
      name: "TING'ANG'A",
      constituency_code: "117",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0583",
      name: "Ndumberi",
      constituency_code: "117",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0584",
      name: "Riabai",
      constituency_code: "117",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0585",
      name: "Township",
      constituency_code: "117",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0586",
      name: "Cianda",
      constituency_code: "118",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0587",
      name: "Karuri",
      constituency_code: "118",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0588",
      name: "Ndenderu",
      constituency_code: "118",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0589",
      name: "Muchatha",
      constituency_code: "118",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0590",
      name: "Kihara",
      constituency_code: "118",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0591",
      name: "Gitaru",
      constituency_code: "119",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0592",
      name: "Muguga",
      constituency_code: "119",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0593",
      name: "Nyadhuna",
      constituency_code: "119",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0594",
      name: "Kabete",
      constituency_code: "119",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0595",
      name: "Uthiru",
      constituency_code: "119",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0596",
      name: "Karai",
      constituency_code: "120",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0597",
      name: "Nachu",
      constituency_code: "120",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0598",
      name: "Sigona",
      constituency_code: "120",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0599",
      name: "Kikuyu",
      constituency_code: "120",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0600",
      name: "Kinoo",
      constituency_code: "120",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0601",
      name: "Bibirioni",
      constituency_code: "121",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0602",
      name: "Limuru Central",
      constituency_code: "121",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0603",
      name: "Ndeiya",
      constituency_code: "121",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0604",
      name: "Limuru East",
      constituency_code: "121",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0605",
      name: "Ngecha Tigoni",
      constituency_code: "121",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0606",
      name: "Kinale",
      constituency_code: "122",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0607",
      name: "Kijabe",
      constituency_code: "122",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0608",
      name: "Nyanduma",
      constituency_code: "122",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0609",
      name: "Kamburu",
      constituency_code: "122",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0610",
      name: "LARI/KIRENGA",
      constituency_code: "122",
      county_code: "022",
      residential_areas: []
    },
    %Ward{
      code: "0611",
      name: "Kaeris",
      constituency_code: "123",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0612",
      name: "Lake Zone",
      constituency_code: "123",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0613",
      name: "Lapur",
      constituency_code: "123",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0614",
      name: "KAALENG/KAIKOR",
      constituency_code: "123",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0615",
      name: "Kibish",
      constituency_code: "123",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0616",
      name: "Nakalale",
      constituency_code: "123",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0617",
      name: "Kakuma",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0618",
      name: "Lopur",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0619",
      name: "Letea",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0620",
      name: "Songot",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0621",
      name: "Kalobeyei",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0622",
      name: "Lokichoggio",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0623",
      name: "Nanaam",
      constituency_code: "124",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0624",
      name: "Kerio Delta",
      constituency_code: "125",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0625",
      name: "KANG'ATOTHA",
      constituency_code: "125",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0626",
      name: "Kalokol",
      constituency_code: "125",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0627",
      name: "Lodwar Township",
      constituency_code: "125",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0628",
      name: "Kanamkemer",
      constituency_code: "125",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0629",
      name: "KOTARUK/LOBEI",
      constituency_code: "126",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0630",
      name: "Turkwel",
      constituency_code: "126",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0631",
      name: "Loima",
      constituency_code: "126",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0632",
      name: "LOKIRIAMA/LORENGIPPI",
      constituency_code: "126",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0633",
      name: "Kaputir",
      constituency_code: "127",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0634",
      name: "Katilu",
      constituency_code: "127",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0635",
      name: "Lobokat",
      constituency_code: "127",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0636",
      name: "Kalapata",
      constituency_code: "127",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0637",
      name: "Lokichar",
      constituency_code: "127",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0638",
      name: "KAPEDO/NAPEITOM",
      constituency_code: "128",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0639",
      name: "Katilia",
      constituency_code: "128",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0640",
      name: "LOKORI/KOCHODIN",
      constituency_code: "128",
      county_code: "023",
      residential_areas: []
    },
    %Ward{
      code: "0641",
      name: "Riwo",
      constituency_code: "129",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0642",
      name: "Kapenguria",
      constituency_code: "129",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0643",
      name: "Mnagei",
      constituency_code: "129",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0644",
      name: "Siyoi",
      constituency_code: "129",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0645",
      name: "Endugh",
      constituency_code: "129",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0646",
      name: "Sook",
      constituency_code: "129",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0647",
      name: "Sekerr",
      constituency_code: "130",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0648",
      name: "Masool",
      constituency_code: "130",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0649",
      name: "Lomut",
      constituency_code: "130",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0650",
      name: "Weiwei",
      constituency_code: "130",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0651",
      name: "Suam",
      constituency_code: "131",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0652",
      name: "Kodich",
      constituency_code: "131",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0653",
      name: "Kapckok",
      constituency_code: "131",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0654",
      name: "Kasei",
      constituency_code: "131",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0655",
      name: "Kiwawa",
      constituency_code: "131",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0656",
      name: "Alale",
      constituency_code: "131",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0657",
      name: "Chepareria",
      constituency_code: "132",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0658",
      name: "Batei",
      constituency_code: "132",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0659",
      name: "Lelan",
      constituency_code: "132",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0660",
      name: "Tapach",
      constituency_code: "132",
      county_code: "024",
      residential_areas: []
    },
    %Ward{
      code: "0661",
      name: "Lodokejek",
      constituency_code: "133",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0662",
      name: "Suguta Marmar",
      constituency_code: "133",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0663",
      name: "Maralal",
      constituency_code: "133",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0664",
      name: "Loosuk",
      constituency_code: "133",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0665",
      name: "Poro",
      constituency_code: "133",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0666",
      name: "EL-BARTA",
      constituency_code: "134",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0667",
      name: "Nachola",
      constituency_code: "134",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0668",
      name: "Ndoto",
      constituency_code: "134",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0669",
      name: "Nyiro",
      constituency_code: "134",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0670",
      name: "Angata Nanyokie",
      constituency_code: "134",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0671",
      name: "Baawa",
      constituency_code: "134",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0672",
      name: "Waso",
      constituency_code: "135",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0673",
      name: "Wamba West",
      constituency_code: "135",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0674",
      name: "Wamba East",
      constituency_code: "135",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0675",
      name: "Wamba North",
      constituency_code: "135",
      county_code: "025",
      residential_areas: []
    },
    %Ward{
      code: "0676",
      name: "Kapomboi",
      constituency_code: "136",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0677",
      name: "Kwanza",
      constituency_code: "136",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0678",
      name: "Keiyo",
      constituency_code: "136",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0679",
      name: "Bidii",
      constituency_code: "136",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0680",
      name: "Chepchoina",
      constituency_code: "137",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0681",
      name: "Endebess",
      constituency_code: "137",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0682",
      name: "Matumbei",
      constituency_code: "137",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0683",
      name: "Kinyoro",
      constituency_code: "138",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0684",
      name: "Matisi",
      constituency_code: "138",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0685",
      name: "Tuwani",
      constituency_code: "138",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0686",
      name: "Saboti",
      constituency_code: "138",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0687",
      name: "Machewa",
      constituency_code: "138",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0688",
      name: "Kiminini",
      constituency_code: "139",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0689",
      name: "Waitaluk",
      constituency_code: "139",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0690",
      name: "Sirende",
      constituency_code: "139",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0691",
      name: "Hospital",
      constituency_code: "139",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0692",
      name: "Sikhendu",
      constituency_code: "139",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0693",
      name: "Nabiswa",
      constituency_code: "139",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0694",
      name: "Sinyerere",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0695",
      name: "Makutano",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0696",
      name: "Kaplamai",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0697",
      name: "Motosiet",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0698",
      name: "CHERANGANY/SUWERWA",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0699",
      name: "CHEPSIRO/KIPTOROR",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0700",
      name: "Sitatunga",
      constituency_code: "140",
      county_code: "026",
      residential_areas: []
    },
    %Ward{
      code: "0701",
      name: "MOI'S BRIDGE",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0702",
      name: "Kapkures",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0703",
      name: "Ziwa",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0704",
      name: "SEGERO/BARSOMBE",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0705",
      name: "Kipsomba",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0706",
      name: "Soy",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0707",
      name: "KUINET/KAPSUSWA",
      constituency_code: "141",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0708",
      name: "Ngenyilel",
      constituency_code: "142",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0709",
      name: "Tapsagoi",
      constituency_code: "142",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0710",
      name: "Kamagut",
      constituency_code: "142",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0711",
      name: "Kiplombe",
      constituency_code: "142",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0712",
      name: "Kapsaos",
      constituency_code: "142",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0713",
      name: "Huruma",
      constituency_code: "142",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0714",
      name: "Tembelio",
      constituency_code: "143",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0715",
      name: "Sergoit",
      constituency_code: "143",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0716",
      name: "KARUNA/MEIBEKI",
      constituency_code: "143",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0717",
      name: "Moiben",
      constituency_code: "143",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0718",
      name: "Kimumu",
      constituency_code: "143",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0719",
      name: "Kapsoya",
      constituency_code: "144",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0720",
      name: "Kaptagat",
      constituency_code: "144",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0721",
      name: "AINABKOI/OLARE",
      constituency_code: "144",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0722",
      name: "SIMAT/KAPSERET",
      constituency_code: "145",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0723",
      name: "Kipkenyo",
      constituency_code: "145",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0724",
      name: "Ngeria",
      constituency_code: "145",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0725",
      name: "Megun",
      constituency_code: "145",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0726",
      name: "Langas",
      constituency_code: "145",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0727",
      name: "Racecourse",
      constituency_code: "146",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0728",
      name: "CHEPTIRET/KIPCHAMO",
      constituency_code: "146",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0729",
      name: "TULWET/CHUIYAT",
      constituency_code: "146",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0730",
      name: "Tarakwa",
      constituency_code: "146",
      county_code: "027",
      residential_areas: []
    },
    %Ward{
      code: "0731",
      name: "Kapyego",
      constituency_code: "147",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0732",
      name: "Sambirir",
      constituency_code: "147",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0733",
      name: "Endo",
      constituency_code: "147",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0734",
      name: "EMBOBUT / EMBULOT",
      constituency_code: "147",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0735",
      name: "Lelan",
      constituency_code: "148",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0736",
      name: "Sengwer",
      constituency_code: "148",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0737",
      name: "CHERANG'ANY/CHEBORORWA",
      constituency_code: "148",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0738",
      name: "MOIBEN/KUSERWO",
      constituency_code: "148",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0739",
      name: "Kapsowar",
      constituency_code: "148",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0740",
      name: "Arror",
      constituency_code: "148",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0741",
      name: "Emsoo",
      constituency_code: "149",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0742",
      name: "Kamariny",
      constituency_code: "149",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0743",
      name: "Kapchemutwa",
      constituency_code: "149",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0744",
      name: "Tambach",
      constituency_code: "149",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0745",
      name: "Kaptarakwa",
      constituency_code: "150",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0746",
      name: "Chepkorio",
      constituency_code: "150",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0747",
      name: "Soy North",
      constituency_code: "150",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0748",
      name: "Soy South",
      constituency_code: "150",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0749",
      name: "Kabiemit",
      constituency_code: "150",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0750",
      name: "Metkei",
      constituency_code: "150",
      county_code: "028",
      residential_areas: []
    },
    %Ward{
      code: "0751",
      name: "SONGHOR/SOBA",
      constituency_code: "151",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0752",
      name: "Tindiret",
      constituency_code: "151",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0753",
      name: "CHEMELIL/CHEMASE",
      constituency_code: "151",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0754",
      name: "Kapsimotwo",
      constituency_code: "151",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0755",
      name: "Kabwareng",
      constituency_code: "152",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0756",
      name: "Terik",
      constituency_code: "152",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0757",
      name: "KEMELOI-MARABA",
      constituency_code: "152",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0758",
      name: "Kobujoi",
      constituency_code: "152",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0759",
      name: "KAPTUMO-KABOI",
      constituency_code: "152",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0760",
      name: "KOYO-NDURIO",
      constituency_code: "152",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0761",
      name: "Nandi Hills",
      constituency_code: "153",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0762",
      name: "Chepkunyuk",
      constituency_code: "153",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0763",
      name: "OL'LESSOS",
      constituency_code: "153",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0764",
      name: "Kapchorua",
      constituency_code: "153",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0765",
      name: "CHEMUNDU/KAPNG'ETUNY",
      constituency_code: "154",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0766",
      name: "Kosirai",
      constituency_code: "154",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0767",
      name: "LELMOKWO/NGECHEK",
      constituency_code: "154",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0768",
      name: "KAPTEL/KAMOIYWO",
      constituency_code: "154",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0769",
      name: "Kiptuya",
      constituency_code: "154",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0770",
      name: "Chepkumia",
      constituency_code: "155",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0771",
      name: "Kapkangani",
      constituency_code: "155",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0772",
      name: "Kapsabet",
      constituency_code: "155",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0773",
      name: "Kilibwoni",
      constituency_code: "155",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0774",
      name: "Chepterwai",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0775",
      name: "Kipkaren",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0776",
      name: "KURGUNG/SURUNGAI",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0777",
      name: "Kabiyet",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0778",
      name: "Ndalat",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0779",
      name: "Kabisaga",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0780",
      name: "SANGALO/KEBULONIK",
      constituency_code: "156",
      county_code: "029",
      residential_areas: []
    },
    %Ward{
      code: "0781",
      name: "Tirioko",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0782",
      name: "Kolowa",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0783",
      name: "Ribkwo",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0784",
      name: "Silale",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0785",
      name: "Loiyamorock",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0786",
      name: "TANGULBEI/KOROSSI",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0787",
      name: "CHURO/AMAYA",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0788",
      name: "Barwessa",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0789",
      name: "Kabartonjo",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0790",
      name: "Saimo/Kipsaraman",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0791",
      name: "Saimo/Soi",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0792",
      name: "Bartabwa",
      constituency_code: "157",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0793",
      name: "Kabarnet",
      constituency_code: "159",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0794",
      name: "Sacho",
      constituency_code: "159",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0795",
      name: "Tenges",
      constituency_code: "159",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0796",
      name: "Ewalel Chapchap",
      constituency_code: "159",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0797",
      name: "Kapropita",
      constituency_code: "159",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0798",
      name: "Marigat",
      constituency_code: "160",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0799",
      name: "Ilchamus",
      constituency_code: "160",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0800",
      name: "Mochongoi",
      constituency_code: "160",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0801",
      name: "Mukutani",
      constituency_code: "160",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0802",
      name: "Mogotio",
      constituency_code: "161",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0803",
      name: "Emining",
      constituency_code: "161",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0804",
      name: "Kisanana",
      constituency_code: "161",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0805",
      name: "Lembus",
      constituency_code: "162",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0806",
      name: "Lembus Kwen",
      constituency_code: "162",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0807",
      name: "Ravine",
      constituency_code: "162",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0808",
      name: "MUMBERES/MAJI MAZURI",
      constituency_code: "162",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0809",
      name: "LEMBUS/PERKERRA",
      constituency_code: "162",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0810",
      name: "Koibatek",
      constituency_code: "162",
      county_code: "030",
      residential_areas: []
    },
    %Ward{
      code: "0811",
      name: "Olmoran",
      constituency_code: "163",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0812",
      name: "Rumuruti Township",
      constituency_code: "163",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0813",
      name: "Kinamba",
      constituency_code: "163",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0814",
      name: "Marmanet",
      constituency_code: "163",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0815",
      name: "Igwamiti",
      constituency_code: "163",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0816",
      name: "Salama",
      constituency_code: "163",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0817",
      name: "Ngobit",
      constituency_code: "164",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0818",
      name: "Tigithi",
      constituency_code: "164",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0819",
      name: "Thingithu",
      constituency_code: "164",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0820",
      name: "Nanyuki",
      constituency_code: "164",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0821",
      name: "Umande",
      constituency_code: "164",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0822",
      name: "Sosian",
      constituency_code: "165",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0823",
      name: "Segera",
      constituency_code: "165",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0824",
      name: "Mukogondo West",
      constituency_code: "165",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0825",
      name: "Mukogondo East",
      constituency_code: "165",
      county_code: "031",
      residential_areas: []
    },
    %Ward{
      code: "0826",
      name: "Mariashoni",
      constituency_code: "166",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0827",
      name: "Elburgon",
      constituency_code: "166",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0828",
      name: "Turi",
      constituency_code: "166",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0829",
      name: "Molo",
      constituency_code: "166",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0830",
      name: "Maunarok",
      constituency_code: "167",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0831",
      name: "Mauche",
      constituency_code: "167",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0832",
      name: "Kihingo",
      constituency_code: "167",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0833",
      name: "Nessuit",
      constituency_code: "167",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0834",
      name: "Lare",
      constituency_code: "167",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0835",
      name: "Njoro",
      constituency_code: "167",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0836",
      name: "Biashara",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0837",
      name: "Hells Gate",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0838",
      name: "Lakeview",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0839",
      name: "MAAI-MAHIU",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0840",
      name: "Maiella",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0841",
      name: "Olkaria",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0842",
      name: "Naivasha East",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0843",
      name: "Viwandani",
      constituency_code: "168",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0844",
      name: "Gilgil",
      constituency_code: "169",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0845",
      name: "Elementaita",
      constituency_code: "169",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0846",
      name: "MBARUK/EBURU",
      constituency_code: "169",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0847",
      name: "Malewa West",
      constituency_code: "169",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0848",
      name: "Murindati",
      constituency_code: "169",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0849",
      name: "Amalo",
      constituency_code: "170",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0850",
      name: "Keringet",
      constituency_code: "170",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0851",
      name: "Kiptagich",
      constituency_code: "170",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0852",
      name: "Tinet",
      constituency_code: "170",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0853",
      name: "Kiptororo",
      constituency_code: "171",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0854",
      name: "Nyota",
      constituency_code: "171",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0855",
      name: "Sirikwa",
      constituency_code: "171",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0856",
      name: "Kamara",
      constituency_code: "171",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0857",
      name: "Subukia",
      constituency_code: "172",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0858",
      name: "Waseges",
      constituency_code: "172",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0859",
      name: "Kabazi",
      constituency_code: "172",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0860",
      name: "Menengai West",
      constituency_code: "173",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0861",
      name: "Soin",
      constituency_code: "173",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0862",
      name: "Visoi",
      constituency_code: "173",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0863",
      name: "Mosop",
      constituency_code: "173",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0864",
      name: "Solai",
      constituency_code: "173",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0865",
      name: "Dundori",
      constituency_code: "174",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0866",
      name: "Kabatini",
      constituency_code: "174",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0867",
      name: "Kiamaina",
      constituency_code: "174",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0868",
      name: "LANET/UMOJA",
      constituency_code: "174",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0869",
      name: "Bahati",
      constituency_code: "174",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0870",
      name: "Barut",
      constituency_code: "175",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0871",
      name: "London",
      constituency_code: "175",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0872",
      name: "Kaptembwo",
      constituency_code: "175",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0873",
      name: "Kapkures",
      constituency_code: "175",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0874",
      name: "Rhoda",
      constituency_code: "175",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0875",
      name: "Shaabab",
      constituency_code: "175",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0876",
      name: "Biashara",
      constituency_code: "176",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0877",
      name: "Kivumbini",
      constituency_code: "176",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0878",
      name: "Flamingo",
      constituency_code: "176",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0879",
      name: "Menengai",
      constituency_code: "176",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0880",
      name: "Nakuru East",
      constituency_code: "176",
      county_code: "032",
      residential_areas: []
    },
    %Ward{
      code: "0881",
      name: "Kilgoris Central",
      constituency_code: "177",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0882",
      name: "Keyian",
      constituency_code: "177",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0883",
      name: "Angata Barikoi",
      constituency_code: "177",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0884",
      name: "Shankoe",
      constituency_code: "177",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0885",
      name: "Kimintet",
      constituency_code: "177",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0886",
      name: "Lolgorian",
      constituency_code: "177",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0887",
      name: "Ilkerin",
      constituency_code: "178",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0888",
      name: "Ololmasani",
      constituency_code: "178",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0889",
      name: "Mogondo",
      constituency_code: "178",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0890",
      name: "Kapsasian",
      constituency_code: "178",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0891",
      name: "Olpusimoru",
      constituency_code: "179",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0892",
      name: "Olokurto",
      constituency_code: "179",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0893",
      name: "Narok Town",
      constituency_code: "179",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0894",
      name: "Nkareta",
      constituency_code: "179",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0895",
      name: "Olorropil",
      constituency_code: "179",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0896",
      name: "Melili",
      constituency_code: "179",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0897",
      name: "Mosiro",
      constituency_code: "180",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0898",
      name: "Ildamat",
      constituency_code: "180",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0899",
      name: "Keekonyokie",
      constituency_code: "180",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0900",
      name: "Suswa",
      constituency_code: "180",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0901",
      name: "MAJIMOTO/NAROOSURA",
      constituency_code: "181",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0902",
      name: "OLOLULUNG'A",
      constituency_code: "181",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0903",
      name: "Melelo",
      constituency_code: "181",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0904",
      name: "Loita",
      constituency_code: "181",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0905",
      name: "Sogoo",
      constituency_code: "181",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0906",
      name: "Sagamian",
      constituency_code: "181",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0907",
      name: "Ilmotiok",
      constituency_code: "182",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0908",
      name: "Mara",
      constituency_code: "182",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0909",
      name: "Siana",
      constituency_code: "182",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0910",
      name: "Naikarra",
      constituency_code: "182",
      county_code: "033",
      residential_areas: []
    },
    %Ward{
      code: "0911",
      name: "Olkeri",
      constituency_code: "183",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0912",
      name: "Ongata Rongai",
      constituency_code: "183",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0913",
      name: "Nkaimurunya",
      constituency_code: "183",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0914",
      name: "Oloolua",
      constituency_code: "183",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0915",
      name: "Ngong",
      constituency_code: "183",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0916",
      name: "Purko",
      constituency_code: "184",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0917",
      name: "Ildamat",
      constituency_code: "184",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0918",
      name: "Dalalekutuk",
      constituency_code: "184",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0919",
      name: "Matapato North",
      constituency_code: "184",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0920",
      name: "Matapato South",
      constituency_code: "184",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0921",
      name: "Kaputiei North",
      constituency_code: "185",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0922",
      name: "Kitengela",
      constituency_code: "185",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0923",
      name: "OLOOSIRKON/SHOLINKE",
      constituency_code: "185",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0924",
      name: "KENYAWA-POKA",
      constituency_code: "185",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0925",
      name: "Imaroro",
      constituency_code: "185",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0926",
      name: "Keekonyokie",
      constituency_code: "186",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0927",
      name: "Iloodokilani",
      constituency_code: "186",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0928",
      name: "Magadi",
      constituency_code: "186",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0929",
      name: "EWUASO OONKIDONG'I",
      constituency_code: "186",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0930",
      name: "Mosiro",
      constituency_code: "186",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0931",
      name: "ENTONET/LENKISIM",
      constituency_code: "187",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0932",
      name: "MBIRIKANI/ESELENKEI",
      constituency_code: "187",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0933",
      name: "Kuku",
      constituency_code: "187",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0934",
      name: "Rombo",
      constituency_code: "187",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0935",
      name: "Kimana",
      constituency_code: "187",
      county_code: "034",
      residential_areas: []
    },
    %Ward{
      code: "0936",
      name: "Londiani",
      constituency_code: "188",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0937",
      name: "KEDOWA/KIMUGUL",
      constituency_code: "188",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0938",
      name: "Chepseon",
      constituency_code: "188",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0939",
      name: "TENDENO/SORGET",
      constituency_code: "188",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0940",
      name: "Kunyak",
      constituency_code: "189",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0941",
      name: "Kamasian",
      constituency_code: "189",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0942",
      name: "Kipkelion",
      constituency_code: "189",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0943",
      name: "Chilchila",
      constituency_code: "189",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0944",
      name: "Kapsoit",
      constituency_code: "190",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0945",
      name: "Ainamoi",
      constituency_code: "190",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0946",
      name: "Kapkugerwet",
      constituency_code: "190",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0947",
      name: "Kipchebor",
      constituency_code: "190",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0948",
      name: "Kipchimchim",
      constituency_code: "190",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0949",
      name: "Kapsaos",
      constituency_code: "190",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0950",
      name: "Kisiara",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0951",
      name: "Tebesonik",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0952",
      name: "Cheboin",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0953",
      name: "Chemosot",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0954",
      name: "Litein",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0955",
      name: "Cheplanget",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0956",
      name: "Kapkatet",
      constituency_code: "191",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0957",
      name: "Waldai",
      constituency_code: "192",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0958",
      name: "Kabianga",
      constituency_code: "192",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0959",
      name: "CHEPTORORIET/SERETUT",
      constituency_code: "192",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0960",
      name: "Chaik",
      constituency_code: "192",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0961",
      name: "Kapsuser",
      constituency_code: "192",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0962",
      name: "Sigowet",
      constituency_code: "193",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0963",
      name: "Kaplelartet",
      constituency_code: "193",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0964",
      name: "Soliat",
      constituency_code: "193",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0965",
      name: "Soin",
      constituency_code: "193",
      county_code: "035",
      residential_areas: []
    },
    %Ward{
      code: "0966",
      name: "NDANAI/ABOSI",
      constituency_code: "194",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0967",
      name: "Chemagel",
      constituency_code: "194",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0968",
      name: "Kipsonoi",
      constituency_code: "194",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0969",
      name: "Kapletundo",
      constituency_code: "194",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0970",
      name: "RONGENA/MANARET",
      constituency_code: "194",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0971",
      name: "KONG'ASIS",
      constituency_code: "195",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0972",
      name: "Nyangores",
      constituency_code: "195",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0973",
      name: "Sigor",
      constituency_code: "195",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0974",
      name: "Chebunyo",
      constituency_code: "195",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0975",
      name: "Siongiroi",
      constituency_code: "195",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0976",
      name: "Merigi",
      constituency_code: "196",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0977",
      name: "Kembu",
      constituency_code: "196",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0978",
      name: "Longisa",
      constituency_code: "196",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0979",
      name: "Kipreres",
      constituency_code: "196",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0980",
      name: "Chemaner",
      constituency_code: "196",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0981",
      name: "Silibwet Township",
      constituency_code: "197",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0982",
      name: "Ndaraweta",
      constituency_code: "197",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0983",
      name: "Singorwet",
      constituency_code: "197",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0984",
      name: "Chesoen",
      constituency_code: "197",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0985",
      name: "Mutarakwa",
      constituency_code: "197",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0986",
      name: "Chepchabas",
      constituency_code: "198",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0987",
      name: "Kimulot",
      constituency_code: "198",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0988",
      name: "Mogogosiek",
      constituency_code: "198",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0989",
      name: "Boito",
      constituency_code: "198",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0990",
      name: "Embomos",
      constituency_code: "198",
      county_code: "036",
      residential_areas: []
    },
    %Ward{
      code: "0991",
      name: "Mautuma",
      constituency_code: "199",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0992",
      name: "Lugari",
      constituency_code: "199",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0993",
      name: "Lumakanda",
      constituency_code: "199",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0994",
      name: "Chekalini",
      constituency_code: "199",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0995",
      name: "Chevaywa",
      constituency_code: "199",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0996",
      name: "Lwandeti",
      constituency_code: "199",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0997",
      name: "Likuyani",
      constituency_code: "200",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0998",
      name: "Sango",
      constituency_code: "200",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "0999",
      name: "Kongoni",
      constituency_code: "200",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1000",
      name: "Nzoia",
      constituency_code: "200",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1001",
      name: "Sinoko",
      constituency_code: "200",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1002",
      name: "West Kabras",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1003",
      name: "Chemuche",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1004",
      name: "East Kabras",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1005",
      name: "BUTALI/CHEGULO",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1006",
      name: "MANDA-SHIVANGA",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1007",
      name: "SHIRUGU-MUGAI",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1008",
      name: "South Kabras",
      constituency_code: "201",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1009",
      name: "Butsotso East",
      constituency_code: "202",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1010",
      name: "Butsotso South",
      constituency_code: "202",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1011",
      name: "Butsotso Central",
      constituency_code: "202",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1012",
      name: "Sheywe",
      constituency_code: "202",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1013",
      name: "Mahiakalo",
      constituency_code: "202",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1014",
      name: "Shirere",
      constituency_code: "202",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1015",
      name: "INGOSTSE-MATHIA",
      constituency_code: "203",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1016",
      name: "SHINOYI-SHIKOMARI-",
      constituency_code: "203",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1017",
      name: "Bunyala West",
      constituency_code: "203",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1018",
      name: "Bunyala East",
      constituency_code: "203",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1019",
      name: "Bunyala Central",
      constituency_code: "203",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1020",
      name: "Mumias Central",
      constituency_code: "204",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1021",
      name: "Mumias North",
      constituency_code: "204",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1022",
      name: "Etenje",
      constituency_code: "204",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1023",
      name: "Musanda",
      constituency_code: "204",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1024",
      name: "LUBINU/LUSHEYA",
      constituency_code: "205",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1025",
      name: "ISONGO/MAKUNGA/MALAHA",
      constituency_code: "205",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1026",
      name: "East Wanga",
      constituency_code: "205",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1027",
      name: "Koyonzo",
      constituency_code: "206",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1028",
      name: "Kholera",
      constituency_code: "206",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1029",
      name: "Khalaba",
      constituency_code: "206",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1030",
      name: "Mayoni",
      constituency_code: "206",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1031",
      name: "Namamali",
      constituency_code: "206",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1032",
      name: "Marama West",
      constituency_code: "207",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1033",
      name: "Marama Central",
      constituency_code: "207",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1034",
      name: "MARENYO - SHIANDA",
      constituency_code: "207",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1035",
      name: "Marama North",
      constituency_code: "207",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1036",
      name: "Marama South",
      constituency_code: "207",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1037",
      name: "Kisa North",
      constituency_code: "208",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1038",
      name: "Kisa East",
      constituency_code: "208",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1039",
      name: "Kisa West",
      constituency_code: "208",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1040",
      name: "Kisa Central",
      constituency_code: "208",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1041",
      name: "Isukha North",
      constituency_code: "209",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1042",
      name: "Murhanda",
      constituency_code: "209",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1043",
      name: "Isukha Central",
      constituency_code: "209",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1044",
      name: "Isukha South",
      constituency_code: "209",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1045",
      name: "Isukha East",
      constituency_code: "209",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1046",
      name: "Isukha West",
      constituency_code: "209",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1047",
      name: "Idakho South",
      constituency_code: "210",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1048",
      name: "Idakho East",
      constituency_code: "210",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1049",
      name: "Idakho North",
      constituency_code: "210",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1050",
      name: "Idakho Central",
      constituency_code: "210",
      county_code: "037",
      residential_areas: []
    },
    %Ward{
      code: "1051",
      name: "LUGAGA-WAMULUMA",
      constituency_code: "211",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1052",
      name: "South Maragoli",
      constituency_code: "211",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1053",
      name: "Central Maragoli",
      constituency_code: "211",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1054",
      name: "Mungoma",
      constituency_code: "211",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1055",
      name: "LYADUYWA/IZAVA",
      constituency_code: "212",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1056",
      name: "West Sabatia",
      constituency_code: "212",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1057",
      name: "Chavakali",
      constituency_code: "212",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1058",
      name: "North Maragoli",
      constituency_code: "212",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1059",
      name: "Wodanga",
      constituency_code: "212",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1060",
      name: "Busali",
      constituency_code: "212",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1061",
      name: "Shiru",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1062",
      name: "Muhudu",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1063",
      name: "Shamakhokho",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1064",
      name: "Gisambai",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1065",
      name: "Banja",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1066",
      name: "Tambua",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1067",
      name: "Jepkoyai",
      constituency_code: "213",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1068",
      name: "Luanda Township",
      constituency_code: "214",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1069",
      name: "Wemilabi",
      constituency_code: "214",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1070",
      name: "Mwibona",
      constituency_code: "214",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1071",
      name: "Luanda South",
      constituency_code: "214",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1072",
      name: "Emabungo",
      constituency_code: "214",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1073",
      name: "North East Bunyore",
      constituency_code: "215",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1074",
      name: "Central Bunyore",
      constituency_code: "215",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1075",
      name: "West Bunyore",
      constituency_code: "215",
      county_code: "038",
      residential_areas: []
    },
    %Ward{
      code: "1076",
      name: "Cheptais",
      constituency_code: "216",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1077",
      name: "Chesikaki",
      constituency_code: "216",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1078",
      name: "Chepyuk",
      constituency_code: "216",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1079",
      name: "Kapkateny",
      constituency_code: "216",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1080",
      name: "Kaptama",
      constituency_code: "216",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1081",
      name: "Elgon",
      constituency_code: "216",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1082",
      name: "Namwela",
      constituency_code: "217",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1083",
      name: "MALAKISI/SOUTH KULISIRU",
      constituency_code: "217",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1084",
      name: "Lwandanyi",
      constituency_code: "217",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1085",
      name: "KABUCHAI/CHWELE",
      constituency_code: "218",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1086",
      name: "West Nalondo",
      constituency_code: "218",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1087",
      name: "BWAKE/LUUYA",
      constituency_code: "218",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1088",
      name: "Mukuyuni",
      constituency_code: "218",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1089",
      name: "South Bukusu",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1090",
      name: "Bumula",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1091",
      name: "Khasoko",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1092",
      name: "Kabula",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1093",
      name: "Kimaeti",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1094",
      name: "West Bukusu",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1095",
      name: "Siboti",
      constituency_code: "219",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1096",
      name: "Bukembe West",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1097",
      name: "Bukembe East",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1098",
      name: "Township",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1099",
      name: "Khalaba",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1100",
      name: "Musikoma",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1101",
      name: "EAST SANG'ALO",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1102",
      name: "MARAKARU/TUUTI",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1103",
      name: "SANG'ALO WEST",
      constituency_code: "220",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1104",
      name: "Mihuu",
      constituency_code: "221",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1105",
      name: "Ndivisi",
      constituency_code: "221",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1106",
      name: "Maraka",
      constituency_code: "221",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1107",
      name: "Misikhu",
      constituency_code: "222",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1108",
      name: "Sitikho",
      constituency_code: "222",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1109",
      name: "Matulo",
      constituency_code: "222",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1110",
      name: "Bokoli",
      constituency_code: "222",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1111",
      name: "Kimilili",
      constituency_code: "223",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1112",
      name: "Kibingei",
      constituency_code: "223",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1113",
      name: "Maeni",
      constituency_code: "223",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1114",
      name: "Kamukuywa",
      constituency_code: "223",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1115",
      name: "Mbakalo",
      constituency_code: "224",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1116",
      name: "NAITIRI/KABUYEFWE",
      constituency_code: "224",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1117",
      name: "Milima",
      constituency_code: "224",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1118",
      name: "NDALU/ TABANI",
      constituency_code: "224",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1119",
      name: "Tongaren",
      constituency_code: "224",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1120",
      name: "SOYSAMBU/ MITUA",
      constituency_code: "224",
      county_code: "039",
      residential_areas: []
    },
    %Ward{
      code: "1121",
      name: "Malaba Central",
      constituency_code: "225",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1122",
      name: "Malaba North",
      constituency_code: "225",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1123",
      name: "ANG'URAI SOUTH",
      constituency_code: "225",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1124",
      name: "ANG'URAI NORTH",
      constituency_code: "225",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1125",
      name: "ANG'URAI EAST",
      constituency_code: "225",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1126",
      name: "Malaba South",
      constituency_code: "225",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1127",
      name: "ANG'OROM",
      constituency_code: "226",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1128",
      name: "Chakol South",
      constituency_code: "226",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1129",
      name: "Chakol North",
      constituency_code: "226",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1130",
      name: "Amukura West",
      constituency_code: "226",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1131",
      name: "Amukura East",
      constituency_code: "226",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1132",
      name: "Amukura Central",
      constituency_code: "226",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1133",
      name: "Nambale Township",
      constituency_code: "227",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1134",
      name: "BUKHAYO NORTH/WALTSI",
      constituency_code: "227",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1135",
      name: "Bukhayo East",
      constituency_code: "227",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1136",
      name: "Bukhayo Central",
      constituency_code: "227",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1137",
      name: "Bukhayo West",
      constituency_code: "228",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1138",
      name: "Mayenje",
      constituency_code: "228",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1139",
      name: "Matayos South",
      constituency_code: "228",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1140",
      name: "Busibwabo",
      constituency_code: "228",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1141",
      name: "Burumba",
      constituency_code: "228",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1142",
      name: "Marachi West",
      constituency_code: "229",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1143",
      name: "Kingandole",
      constituency_code: "229",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1144",
      name: "Marachi Central",
      constituency_code: "229",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1145",
      name: "Marachi East",
      constituency_code: "229",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1146",
      name: "Marachi North",
      constituency_code: "229",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1147",
      name: "Elugulu",
      constituency_code: "229",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1148",
      name: "Namboboto Nambuku",
      constituency_code: "230",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1149",
      name: "Nangina",
      constituency_code: "230",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1150",
      name: "AGENG'A NANGUBA",
      constituency_code: "230",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1151",
      name: "Bwiri",
      constituency_code: "230",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1152",
      name: "Bunyala Central",
      constituency_code: "231",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1153",
      name: "Bunyala North",
      constituency_code: "231",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1154",
      name: "Bunyala West",
      constituency_code: "231",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1155",
      name: "Bunyala South",
      constituency_code: "231",
      county_code: "040",
      residential_areas: []
    },
    %Ward{
      code: "1156",
      name: "West Ugenya",
      constituency_code: "232",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1157",
      name: "Ukwala",
      constituency_code: "232",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1158",
      name: "North Ugenya",
      constituency_code: "232",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1159",
      name: "East Ugenya",
      constituency_code: "232",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1160",
      name: "Sidindi",
      constituency_code: "233",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1161",
      name: "Sigomere",
      constituency_code: "233",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1162",
      name: "Ugunja",
      constituency_code: "233",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1163",
      name: "Usonga",
      constituency_code: "234",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1164",
      name: "West Alego",
      constituency_code: "234",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1165",
      name: "Central Alego",
      constituency_code: "234",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1166",
      name: "Siaya Township",
      constituency_code: "234",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1167",
      name: "North Alego",
      constituency_code: "234",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1168",
      name: "South East Alego",
      constituency_code: "234",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1169",
      name: "North Gem",
      constituency_code: "235",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1170",
      name: "West Gem",
      constituency_code: "235",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1171",
      name: "Central Gem",
      constituency_code: "235",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1172",
      name: "Yala Township",
      constituency_code: "235",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1173",
      name: "East Gem",
      constituency_code: "235",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1174",
      name: "South Gem",
      constituency_code: "235",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1175",
      name: "West Yimbo",
      constituency_code: "236",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1176",
      name: "Central Sakwa",
      constituency_code: "236",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1177",
      name: "South Sakwa",
      constituency_code: "236",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1178",
      name: "Yimbo East",
      constituency_code: "236",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1179",
      name: "West Sakwa",
      constituency_code: "236",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1180",
      name: "North Sakwa",
      constituency_code: "236",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1181",
      name: "East Asembo",
      constituency_code: "237",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1182",
      name: "West Asembo",
      constituency_code: "237",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1183",
      name: "North Uyoma",
      constituency_code: "237",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1184",
      name: "South Uyoma",
      constituency_code: "237",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1185",
      name: "West Uyoma",
      constituency_code: "237",
      county_code: "041",
      residential_areas: []
    },
    %Ward{
      code: "1186",
      name: "Kajulu",
      constituency_code: "238",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1187",
      name: "Kolwa East",
      constituency_code: "238",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1188",
      name: "MANYATTA 'B'",
      constituency_code: "238",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1189",
      name: "NYALENDA 'A'",
      constituency_code: "238",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1190",
      name: "Kolwa Central",
      constituency_code: "238",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1191",
      name: "South West Kisumu",
      constituency_code: "239",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1192",
      name: "Central Kisumu",
      constituency_code: "239",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1193",
      name: "Kisumu North",
      constituency_code: "239",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1194",
      name: "West Kisumu",
      constituency_code: "239",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1195",
      name: "North West Kisumu",
      constituency_code: "239",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1196",
      name: "Railways",
      constituency_code: "240",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1197",
      name: "Migosi",
      constituency_code: "240",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1198",
      name: "Shaurimoyo Kaloleni",
      constituency_code: "240",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1199",
      name: "Market Milimani",
      constituency_code: "240",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1200",
      name: "Kondele",
      constituency_code: "240",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1201",
      name: "Nyalenda B",
      constituency_code: "240",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1202",
      name: "West Seme",
      constituency_code: "241",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1203",
      name: "Central Seme",
      constituency_code: "241",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1204",
      name: "East Seme",
      constituency_code: "241",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1205",
      name: "North Seme",
      constituency_code: "241",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1206",
      name: "EAST KANO/WAWIDHI",
      constituency_code: "242",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1207",
      name: "AWASI/ONJIKO",
      constituency_code: "242",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1208",
      name: "Ahero",
      constituency_code: "242",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1209",
      name: "KABONYO/KANYAGWAL",
      constituency_code: "242",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1210",
      name: "Kobura",
      constituency_code: "242",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1211",
      name: "Miwani",
      constituency_code: "243",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1212",
      name: "Ombeyi",
      constituency_code: "243",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1213",
      name: "MASOGO/NYANG'OMA",
      constituency_code: "243",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1214",
      name: "Chemelil",
      constituency_code: "243",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1215",
      name: "MUHORONI/KORU",
      constituency_code: "243",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1216",
      name: "South West Nyakach",
      constituency_code: "244",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1217",
      name: "North Nyakach",
      constituency_code: "244",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1218",
      name: "Central Nyakach",
      constituency_code: "244",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1219",
      name: "West Nyakach",
      constituency_code: "244",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1220",
      name: "South East Nyakach",
      constituency_code: "244",
      county_code: "042",
      residential_areas: []
    },
    %Ward{
      code: "1221",
      name: "West Kasipul",
      constituency_code: "245",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1222",
      name: "South Kasipul",
      constituency_code: "245",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1223",
      name: "Central Kasipul",
      constituency_code: "245",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1224",
      name: "East Kamagak",
      constituency_code: "245",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1225",
      name: "West Kamagak",
      constituency_code: "245",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1226",
      name: "Kabondo East",
      constituency_code: "246",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1227",
      name: "Kabondo West",
      constituency_code: "246",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1228",
      name: "KOKWANYO/KAKELO",
      constituency_code: "246",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1229",
      name: "Kojwach",
      constituency_code: "246",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1230",
      name: "West Karachuonyo",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1231",
      name: "North Karachuonyo",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1232",
      name: "Central",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1233",
      name: "Kanyaluo",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1234",
      name: "Kibiri",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1235",
      name: "Wangchieng",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1236",
      name: "Kendu Bay Town",
      constituency_code: "247",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1237",
      name: "West Gem",
      constituency_code: "248",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1238",
      name: "East Gem",
      constituency_code: "248",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1239",
      name: "Kagan",
      constituency_code: "248",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1240",
      name: "Kochia",
      constituency_code: "248",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1241",
      name: "Homa Bay Central",
      constituency_code: "249",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1242",
      name: "Homa Bay Arujo",
      constituency_code: "249",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1243",
      name: "Homa Bay West",
      constituency_code: "249",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1244",
      name: "Homa Bay East",
      constituency_code: "249",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1245",
      name: "Kwabwai",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1246",
      name: "Kanyadoto",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1247",
      name: "Kanyikela",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1248",
      name: "North Kabuoch",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1249",
      name: "KABUOCH SOUTH/PALA",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1250",
      name: "Kanyamwa Kologi",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1251",
      name: "Kanyamwa Kosewe",
      constituency_code: "250",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1252",
      name: "Mfangano Island",
      constituency_code: "251",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1253",
      name: "Rusinga Island",
      constituency_code: "251",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1254",
      name: "Kasgunga",
      constituency_code: "251",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1255",
      name: "Gembe",
      constituency_code: "251",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1256",
      name: "Lambwe",
      constituency_code: "251",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1257",
      name: "Gwassi South",
      constituency_code: "252",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1258",
      name: "Gwassi North",
      constituency_code: "252",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1259",
      name: "Kaksingri West",
      constituency_code: "252",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1260",
      name: "Ruma Kaksingri East",
      constituency_code: "252",
      county_code: "043",
      residential_areas: []
    },
    %Ward{
      code: "1261",
      name: "North Kamagambo",
      constituency_code: "253",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1262",
      name: "Central Kamagambo",
      constituency_code: "253",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1263",
      name: "East Kamagambo",
      constituency_code: "253",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1264",
      name: "South Kamagambo",
      constituency_code: "253",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1265",
      name: "North Sakwa",
      constituency_code: "254",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1266",
      name: "South Sakwa",
      constituency_code: "254",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1267",
      name: "West Sakwa",
      constituency_code: "254",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1268",
      name: "Central Sakwa",
      constituency_code: "254",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1269",
      name: "God Jope",
      constituency_code: "255",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1270",
      name: "Suna Central",
      constituency_code: "255",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1271",
      name: "Kakrao",
      constituency_code: "255",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1272",
      name: "Kwa",
      constituency_code: "255",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1273",
      name: "Wiga",
      constituency_code: "256",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1274",
      name: "Wasweta Ii",
      constituency_code: "256",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1275",
      name: "RAGANA-ORUBA",
      constituency_code: "256",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1276",
      name: "Wasimbete",
      constituency_code: "256",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1277",
      name: "West Kanyamkago",
      constituency_code: "257",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1278",
      name: "North Kanyamkago",
      constituency_code: "257",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1279",
      name: "Central Kanyamkago",
      constituency_code: "257",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1280",
      name: "South Kanyamkago",
      constituency_code: "257",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1281",
      name: "East Kanyamkago",
      constituency_code: "257",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1282",
      name: "KACHIEN'G",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1283",
      name: "Kanyasa",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1284",
      name: "North Kadem",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1285",
      name: "MACALDER/KANYARWANDA",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1286",
      name: "Kaler",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1287",
      name: "Got Kachola",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1288",
      name: "Muhuru",
      constituency_code: "258",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1289",
      name: "Bukira East",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1290",
      name: "BUKIRA CENTRL/IKEREGE",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1291",
      name: "Isibania",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1292",
      name: "Makerero",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1293",
      name: "Masaba",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1294",
      name: "Tagare",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1295",
      name: "NYAMOSENSE/KOMOSOKO",
      constituency_code: "259",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1296",
      name: "GOKEHARAKA/GETAMBWEGA",
      constituency_code: "260",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1297",
      name: "Ntimaru West",
      constituency_code: "260",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1298",
      name: "Ntimaru East",
      constituency_code: "260",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1299",
      name: "Nyabasi East",
      constituency_code: "260",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1300",
      name: "Nyabasi West",
      constituency_code: "260",
      county_code: "044",
      residential_areas: []
    },
    %Ward{
      code: "1301",
      name: "Bomariba",
      constituency_code: "261",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1302",
      name: "Bogiakumu",
      constituency_code: "261",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1303",
      name: "Bomorenda",
      constituency_code: "261",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1304",
      name: "Riana",
      constituency_code: "261",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1305",
      name: "Tabaka",
      constituency_code: "262",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1306",
      name: "BOIKANG'A",
      constituency_code: "262",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1307",
      name: "Bogetenga",
      constituency_code: "262",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1308",
      name: "BORABU / CHITAGO",
      constituency_code: "262",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1309",
      name: "Moticho",
      constituency_code: "262",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1310",
      name: "Getenga",
      constituency_code: "262",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1311",
      name: "Bombaba Borabu",
      constituency_code: "263",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1312",
      name: "Boochi Borabu",
      constituency_code: "263",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1313",
      name: "Bokimonge",
      constituency_code: "263",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1314",
      name: "Magenche",
      constituency_code: "263",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1315",
      name: "Masige West",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1316",
      name: "Masige East",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1317",
      name: "Bobasi Central",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1318",
      name: "Nyacheki",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1319",
      name: "Bobasi Bogetaorio",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1320",
      name: "Bobasi Chache",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1321",
      name: "SAMETA/MOKWERERO",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1322",
      name: "Bobasi Boitangare",
      constituency_code: "264",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1323",
      name: "Majoge",
      constituency_code: "265",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1324",
      name: "BOOCHI/TENDERE",
      constituency_code: "265",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1325",
      name: "BOSOTI/SENGERA",
      constituency_code: "265",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1326",
      name: "Ichuni",
      constituency_code: "266",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1327",
      name: "Nyamasibi",
      constituency_code: "266",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1328",
      name: "Masimba",
      constituency_code: "266",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1329",
      name: "Gesusu",
      constituency_code: "266",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1330",
      name: "Kiamokama",
      constituency_code: "266",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1331",
      name: "Bobaracho",
      constituency_code: "267",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1332",
      name: "Kisii Central",
      constituency_code: "267",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1333",
      name: "Keumbu",
      constituency_code: "267",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1334",
      name: "Kiogoro",
      constituency_code: "267",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1335",
      name: "Birongo",
      constituency_code: "267",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1336",
      name: "Ibeno",
      constituency_code: "267",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1337",
      name: "Monyerero",
      constituency_code: "268",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1338",
      name: "Sensi",
      constituency_code: "268",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1339",
      name: "Marani",
      constituency_code: "268",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1340",
      name: "Kegogi",
      constituency_code: "268",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1341",
      name: "Bogusero",
      constituency_code: "269",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1342",
      name: "Bogeka",
      constituency_code: "269",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1343",
      name: "Nyakoe",
      constituency_code: "269",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1344",
      name: "Kitutu Central",
      constituency_code: "269",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1345",
      name: "Nyatieko",
      constituency_code: "269",
      county_code: "045",
      residential_areas: []
    },
    %Ward{
      code: "1346",
      name: "Rigoma",
      constituency_code: "270",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1347",
      name: "Gachuba",
      constituency_code: "270",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1348",
      name: "Kemera",
      constituency_code: "270",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1349",
      name: "Magombo",
      constituency_code: "270",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1350",
      name: "Manga",
      constituency_code: "270",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1351",
      name: "Gesima",
      constituency_code: "270",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1352",
      name: "Nyamaiya",
      constituency_code: "271",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1353",
      name: "Bogichora",
      constituency_code: "271",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1354",
      name: "Bosamaro",
      constituency_code: "271",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1355",
      name: "Bonyamatuta",
      constituency_code: "271",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1356",
      name: "Township",
      constituency_code: "271",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1357",
      name: "Itibo",
      constituency_code: "272",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1358",
      name: "Bomwagamo",
      constituency_code: "272",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1359",
      name: "Bokeira",
      constituency_code: "272",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1360",
      name: "Magwagwa",
      constituency_code: "272",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1361",
      name: "Ekerenyo",
      constituency_code: "272",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1362",
      name: "Mekenene",
      constituency_code: "273",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1363",
      name: "Kiabonyoru",
      constituency_code: "273",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1364",
      name: "Nyansiongo",
      constituency_code: "273",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1365",
      name: "Esise",
      constituency_code: "273",
      county_code: "046",
      residential_areas: []
    },
    %Ward{
      code: "1366",
      name: "Kitisuru",
      constituency_code: "274",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1367",
      name: "PARKLANDS/HIGHRIDGE",
      constituency_code: "274",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1368",
      name: "Karura",
      constituency_code: "274",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1369",
      name: "Kangemi",
      constituency_code: "274",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1370",
      name: "Mountain View",
      constituency_code: "274",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1371",
      name: "Kilimani",
      constituency_code: "275",
      county_code: "047",
      residential_areas: [
        "Kilimani Estate",
        "Kileleshwa",
        "State House Area",
        "Dennis Pritt Road"
      ]
    },
    %Ward{
      code: "1372",
      name: "Kawangware",
      constituency_code: "275",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1373",
      name: "Gatina",
      constituency_code: "275",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1374",
      name: "Kileleshwa",
      constituency_code: "275",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1375",
      name: "Kabiro",
      constituency_code: "275",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1376",
      name: "Mutuini",
      constituency_code: "276",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1377",
      name: "Ngando",
      constituency_code: "276",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1378",
      name: "Riruta",
      constituency_code: "276",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1379",
      name: "UTHIRU/RUTHIMITU",
      constituency_code: "276",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1380",
      name: "Waithaka",
      constituency_code: "276",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1381",
      name: "Karen",
      constituency_code: "277",
      county_code: "047",
      residential_areas: [
        "Karen Estate",
        "Karen Country Club",
        "Ololua Ridge",
        "Bogani East",
        "Bogani West"
      ]
    },
    %Ward{
      code: "1382",
      name: "Nairobi West",
      constituency_code: "277",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1383",
      name: "MUGUMO-INI",
      constituency_code: "277",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1384",
      name: "SOUTH-C",
      constituency_code: "277",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1385",
      name: "Nyayo Highrise",
      constituency_code: "277",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1386",
      name: "Laini Saba",
      constituency_code: "278",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1387",
      name: "Lindi",
      constituency_code: "278",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1388",
      name: "Makina",
      constituency_code: "278",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1389",
      name: "WOODLEY/KENYATTA GOLF",
      constituency_code: "278",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1390",
      name: "Sarangombe",
      constituency_code: "278",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1391",
      name: "Githurai",
      constituency_code: "279",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1392",
      name: "Kahawa West",
      constituency_code: "279",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1393",
      name: "Zimmerman",
      constituency_code: "279",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1394",
      name: "Roysambu",
      constituency_code: "279",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1395",
      name: "Kahawa",
      constituency_code: "279",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1396",
      name: "Claycity",
      constituency_code: "280",
      county_code: "047",
      residential_areas: ["Clay City", "Sunton", "Hunters"]
    },
    %Ward{
      code: "1397",
      name: "Mwiki",
      constituency_code: "280",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1398",
      name: "Kasarani",
      constituency_code: "280",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1399",
      name: "Njiru",
      constituency_code: "280",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1400",
      name: "Ruai",
      constituency_code: "280",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1401",
      name: "Baba Dogo",
      constituency_code: "281",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1402",
      name: "Utalii",
      constituency_code: "281",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1403",
      name: "Mathare North",
      constituency_code: "281",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1404",
      name: "Lucky Summer",
      constituency_code: "281",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1405",
      name: "Korogocho",
      constituency_code: "281",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1406",
      name: "Imara Daima",
      constituency_code: "282",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1407",
      name: "Kwa Njenga",
      constituency_code: "282",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1408",
      name: "Kwa Reuben",
      constituency_code: "282",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1409",
      name: "Pipeline",
      constituency_code: "282",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1410",
      name: "Kware",
      constituency_code: "282",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1411",
      name: "Kariobangi North",
      constituency_code: "283",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1412",
      name: "Dandora Area I",
      constituency_code: "283",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1413",
      name: "Dandora Area Ii",
      constituency_code: "283",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1414",
      name: "Dandora Area Iii",
      constituency_code: "283",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1415",
      name: "Dandora Area Iv",
      constituency_code: "283",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1416",
      name: "Kayole North",
      constituency_code: "284",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1417",
      name: "Kayole Central",
      constituency_code: "284",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1418",
      name: "Kayole South",
      constituency_code: "284",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1419",
      name: "Komarock",
      constituency_code: "284",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1420",
      name: "Matopeni",
      constituency_code: "284",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1421",
      name: "Upper Savannah",
      constituency_code: "285",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1422",
      name: "Lower Savannah",
      constituency_code: "285",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1423",
      name: "Embakasi",
      constituency_code: "285",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1424",
      name: "Utawala",
      constituency_code: "285",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1425",
      name: "Mihango",
      constituency_code: "285",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1426",
      name: "Umoja I",
      constituency_code: "286",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1427",
      name: "Umoja Ii",
      constituency_code: "286",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1428",
      name: "Mowlem",
      constituency_code: "286",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1429",
      name: "Kariobangi South",
      constituency_code: "286",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1430",
      name: "Makongeni",
      constituency_code: "287",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1431",
      name: "MARINGO/HAMZA",
      constituency_code: "287",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1432",
      name: "Harambee",
      constituency_code: "287",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1433",
      name: "Viwandani",
      constituency_code: "287",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1434",
      name: "Pumwani",
      constituency_code: "288",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1435",
      name: "Eastleigh North",
      constituency_code: "288",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1436",
      name: "Eastleigh South",
      constituency_code: "288",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1437",
      name: "Airbase",
      constituency_code: "288",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1438",
      name: "California",
      constituency_code: "288",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1439",
      name: "Nairobi Central",
      constituency_code: "289",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1440",
      name: "Ngara",
      constituency_code: "289",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1441",
      name: "ZIWANI/KARIOKOR",
      constituency_code: "289",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1442",
      name: "Pangani",
      constituency_code: "289",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1443",
      name: "Landimawe",
      constituency_code: "289",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1444",
      name: "Nairobi South",
      constituency_code: "289",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1445",
      name: "Hospital",
      constituency_code: "290",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1446",
      name: "Mabatini",
      constituency_code: "290",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1447",
      name: "Huruma",
      constituency_code: "290",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1448",
      name: "Ngei",
      constituency_code: "290",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1449",
      name: "Mlango Kubwa",
      constituency_code: "290",
      county_code: "047",
      residential_areas: []
    },
    %Ward{
      code: "1450",
      name: "Kiamaiko",
      constituency_code: "290",
      county_code: "047",
      residential_areas: []
    }
  ]

  @doc """
  Returns all wards data.
  """
  def all, do: @wards

  @doc """
  Gets a ward by ward code or name.
  """
  def get(identifier) when is_binary(identifier) do
    Utils.get(@wards, identifier)
  end

  def get(code) when is_integer(code) do
    padded_code = String.pad_leading(to_string(code), 4, "0")
    get(padded_code)
  end

  @doc """
  Gets all wards in a constituency by constituency code.
  """
  def in_constituency(constituency_identifier) when is_binary(constituency_identifier) do
    case Kenya.get_constituency(constituency_identifier) do
      nil -> []
      constituency -> Enum.map(constituency.ward_codes, &Kenya.get_ward/1)
    end
  end

  def in_constituency(constituency_code) when is_integer(constituency_code) do
    padded_code = String.pad_leading(to_string(constituency_code), 3, "0")
    in_constituency(padded_code)
  end

  @doc """
  Gets all wards in a county by county code.
  """
  def in_county(county_code) when is_binary(county_code) do
    Enum.filter(@wards, &(&1.county_code == county_code))
  end

  def in_county(county_code) when is_integer(county_code) do
    padded_code = String.pad_leading(to_string(county_code), 3, "0")
    in_county(padded_code)
  end

  @doc """
  Filters wards based on given criteria.

  ## Examples

      iex> mombasa_wards = Kenya.Data.Wards.filter_by(%{county_code: "001"})
      iex> length(mombasa_wards)
      30

  """
  def filter_by(criteria) when is_map(criteria) do
    Enum.filter(@wards, fn ward ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(ward, key) == value
      end)
    end)
  end

  @doc """
  Searches wards by residential area name.

  ## Examples

      iex> results = Kenya.Data.Wards.search_by_residential_area("Sunton")
      iex> length(results) >= 1
      true

  """
  def search_by_residential_area(area_name) when is_binary(area_name) do
    normalized_area = String.downcase(area_name)

    Enum.filter(@wards, fn ward ->
      case ward.residential_areas do
        nil ->
          false

        areas when is_list(areas) ->
          Enum.any?(areas, fn area ->
            String.contains?(String.downcase(area), normalized_area)
          end)

        _ ->
          false
      end
    end)
  end
end
