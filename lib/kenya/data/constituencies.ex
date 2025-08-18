defmodule Kenya.Data.Constituencies do
  @moduledoc """
  Compiled constituency data for Kenya.

  This module contains the complete list of Kenya's 289 constituencies
  with their associated county and ward codes using proper Kenyan coding system.

  Data source: https://github.com/pkiage/data-Kenya-Counties-Constituencies-Wards
  """

  # alias Kenya.Data.Counties
  alias Kenya.Constituency
  alias Kenya.Data.Utils

  @constituencies [
    %Constituency{
      code: "001",
      county_code: "001",
      name: "Changamwe",
      ward_codes: ["0001", "0002", "0003", "0004", "0005"]
    },
    %Constituency{
      code: "002",
      county_code: "001",
      name: "Jomvu",
      ward_codes: ["0006", "0007", "0008"]
    },
    %Constituency{
      code: "003",
      county_code: "001",
      name: "Kisauni",
      ward_codes: ["0009", "0010", "0011", "0012", "0013", "0014", "0015"]
    },
    %Constituency{
      code: "004",
      county_code: "001",
      name: "Nyali",
      ward_codes: ["0016", "0017", "0018", "0019", "0020"]
    },
    %Constituency{
      code: "005",
      county_code: "001",
      name: "Likoni",
      ward_codes: ["0021", "0022", "0023", "0024", "0025"]
    },
    %Constituency{
      code: "006",
      county_code: "001",
      name: "Mvita",
      ward_codes: ["0026", "0027", "0028", "0029", "0030"]
    },
    %Constituency{
      code: "007",
      county_code: "002",
      name: "Msambweni",
      ward_codes: ["0031", "0032", "0033", "0034"]
    },
    %Constituency{
      code: "008",
      county_code: "002",
      name: "Lungalunga",
      ward_codes: ["0035", "0036", "0037", "0038"]
    },
    %Constituency{
      code: "009",
      county_code: "002",
      name: "Matuga",
      ward_codes: ["0039", "0040", "0041", "0042", "0043"]
    },
    %Constituency{
      code: "010",
      county_code: "002",
      name: "Kinango",
      ward_codes: ["0044", "0045", "0046", "0047", "0048", "0049", "0050"]
    },
    %Constituency{
      code: "011",
      county_code: "003",
      name: "Kilifi North",
      ward_codes: ["0051", "0052", "0053", "0054", "0055", "0056", "0057"]
    },
    %Constituency{
      code: "012",
      county_code: "003",
      name: "Kilifi South",
      ward_codes: ["0058", "0059", "0060", "0061", "0062"]
    },
    %Constituency{
      code: "013",
      county_code: "003",
      name: "Kaloleni",
      ward_codes: ["0063", "0064", "0065", "0066"]
    },
    %Constituency{
      code: "014",
      county_code: "003",
      name: "Rabai",
      ward_codes: ["0067", "0068", "0069", "0070"]
    },
    %Constituency{
      code: "015",
      county_code: "003",
      name: "Ganze",
      ward_codes: ["0071", "0072", "0073", "0074"]
    },
    %Constituency{
      code: "016",
      county_code: "003",
      name: "Malindi",
      ward_codes: ["0075", "0076", "0077", "0078", "0079"]
    },
    %Constituency{
      code: "017",
      county_code: "003",
      name: "Magarini",
      ward_codes: ["0080", "0081", "0082", "0083", "0084", "0085"]
    },
    %Constituency{
      code: "018",
      county_code: "004",
      name: "Garsen",
      ward_codes: ["0086", "0087", "0088", "0089", "0090", "0091"]
    },
    %Constituency{
      code: "019",
      county_code: "004",
      name: "Galole",
      ward_codes: ["0092", "0093", "0094", "0095"]
    },
    %Constituency{
      code: "020",
      county_code: "004",
      name: "Bura",
      ward_codes: ["0096", "0097", "0098", "0099", "0100"]
    },
    %Constituency{
      code: "021",
      county_code: "005",
      name: "Lamu East",
      ward_codes: ["0101", "0102", "0103"]
    },
    %Constituency{
      code: "022",
      county_code: "005",
      name: "Lamu West",
      ward_codes: ["0104", "0105", "0106", "0107", "0108", "0109", "0110"]
    },
    %Constituency{
      code: "023",
      county_code: "006",
      name: "Taveta",
      ward_codes: ["0111", "0112", "0113", "0114", "0115"]
    },
    %Constituency{
      code: "024",
      county_code: "006",
      name: "Wundanyi",
      ward_codes: ["0116", "0117", "0118", "0119"]
    },
    %Constituency{
      code: "025",
      county_code: "006",
      name: "Mwatate",
      ward_codes: ["0120", "0121", "0122", "0123", "0124"]
    },
    %Constituency{
      code: "026",
      county_code: "006",
      name: "Voi",
      ward_codes: ["0125", "0126", "0127", "0128", "0129", "0130"]
    },
    %Constituency{
      code: "027",
      county_code: "007",
      name: "Garissa Township",
      ward_codes: ["0131", "0132", "0133", "0134"]
    },
    %Constituency{
      code: "028",
      county_code: "007",
      name: "Balambala",
      ward_codes: ["0135", "0136", "0137", "0138", "0139"]
    },
    %Constituency{
      code: "029",
      county_code: "007",
      name: "Lagdera",
      ward_codes: ["0140", "0141", "0142", "0143", "0144", "0145"]
    },
    %Constituency{
      code: "030",
      county_code: "007",
      name: "Dadaab",
      ward_codes: ["0146", "0147", "0148", "0149", "0150", "0151"]
    },
    %Constituency{
      code: "031",
      county_code: "007",
      name: "Fafi",
      ward_codes: ["0152", "0153", "0154", "0155", "0156"]
    },
    %Constituency{
      code: "032",
      county_code: "007",
      name: "Ijara",
      ward_codes: ["0157", "0158", "0159", "0160"]
    },
    %Constituency{
      code: "033",
      county_code: "008",
      name: "Wajir North",
      ward_codes: ["0161", "0162", "0163", "0164", "0165", "0166", "0167"]
    },
    %Constituency{
      code: "034",
      county_code: "008",
      name: "Wajir East",
      ward_codes: ["0168", "0169", "0170", "0171"]
    },
    %Constituency{
      code: "035",
      county_code: "008",
      name: "Tarbaj",
      ward_codes: ["0172", "0173", "0174", "0175"]
    },
    %Constituency{
      code: "036",
      county_code: "008",
      name: "Wajir West",
      ward_codes: ["0176", "0177", "0178", "0179"]
    },
    %Constituency{
      code: "037",
      county_code: "008",
      name: "Eldas",
      ward_codes: ["0180", "0181", "0182", "0183"]
    },
    %Constituency{
      code: "038",
      county_code: "008",
      name: "Wajir South",
      ward_codes: ["0184", "0185", "0186", "0187", "0188", "0189", "0190"]
    },
    %Constituency{
      code: "039",
      county_code: "009",
      name: "Mandera West",
      ward_codes: ["0191", "0192", "0193", "0194", "0195"]
    },
    %Constituency{
      code: "040",
      county_code: "009",
      name: "Banissa",
      ward_codes: ["0196", "0197", "0198", "0199", "0200"]
    },
    %Constituency{
      code: "041",
      county_code: "009",
      name: "Mandera North",
      ward_codes: ["0201", "0202", "0203", "0204", "0205"]
    },
    %Constituency{
      code: "042",
      county_code: "009",
      name: "Mandera South",
      ward_codes: ["0206", "0207", "0208", "0209", "0210"]
    },
    %Constituency{
      code: "043",
      county_code: "009",
      name: "Mandera East",
      ward_codes: ["0211", "0212", "0213", "0214", "0215"]
    },
    %Constituency{
      code: "044",
      county_code: "009",
      name: "Lafey",
      ward_codes: ["0216", "0217", "0218", "0219", "0220"]
    },
    %Constituency{
      code: "045",
      county_code: "010",
      name: "Moyale",
      ward_codes: ["0221", "0222", "0223", "0224", "0225", "0226", "0227"]
    },
    %Constituency{
      code: "046",
      county_code: "010",
      name: "North Horr",
      ward_codes: ["0228", "0229", "0230", "0231", "0232"]
    },
    %Constituency{
      code: "047",
      county_code: "010",
      name: "Saku",
      ward_codes: ["0233", "0234", "0235"]
    },
    %Constituency{
      code: "048",
      county_code: "010",
      name: "Laisamis",
      ward_codes: ["0236", "0237", "0238", "0239", "0240"]
    },
    %Constituency{
      code: "049",
      county_code: "011",
      name: "Isiolo North",
      ward_codes: ["0241", "0242", "0243", "0244", "0245", "0246", "0247"]
    },
    %Constituency{
      code: "050",
      county_code: "011",
      name: "Isiolo South",
      ward_codes: ["0248", "0249", "0250"]
    },
    %Constituency{
      code: "051",
      county_code: "012",
      name: "Igembe South",
      ward_codes: ["0251", "0252", "0253", "0254", "0255"]
    },
    %Constituency{
      code: "052",
      county_code: "012",
      name: "Igembe Central",
      ward_codes: ["0256", "0257", "0258", "0259", "0260"]
    },
    %Constituency{
      code: "053",
      county_code: "012",
      name: "Igembe North",
      ward_codes: ["0261", "0262", "0263", "0264", "0265"]
    },
    %Constituency{
      code: "054",
      county_code: "012",
      name: "Tigania West",
      ward_codes: ["0266", "0267", "0268", "0269", "0270"]
    },
    %Constituency{
      code: "055",
      county_code: "012",
      name: "Tigania East",
      ward_codes: ["0271", "0272", "0273", "0274", "0275"]
    },
    %Constituency{
      code: "056",
      county_code: "012",
      name: "North Imenti",
      ward_codes: ["0276", "0277", "0278", "0279", "0280"]
    },
    %Constituency{
      code: "057",
      county_code: "012",
      name: "Buuri",
      ward_codes: ["0281", "0282", "0283", "0284", "0285"]
    },
    %Constituency{
      code: "058",
      county_code: "012",
      name: "Central Imenti",
      ward_codes: ["0286", "0287", "0288", "0289"]
    },
    %Constituency{
      code: "059",
      county_code: "012",
      name: "South Imenti",
      ward_codes: ["0290", "0291", "0292", "0293", "0294", "0295"]
    },
    %Constituency{
      code: "060",
      county_code: "013",
      name: "Maara",
      ward_codes: ["0296", "0297", "0298", "0299", "0300"]
    },
    %Constituency{
      code: "061",
      county_code: "013",
      name: "CHUKA/IGAMBANG'OM",
      ward_codes: ["0301", "0302", "0303", "0304", "0305"]
    },
    %Constituency{
      code: "062",
      county_code: "013",
      name: "Tharaka",
      ward_codes: ["0306", "0307", "0308", "0309", "0310"]
    },
    %Constituency{
      code: "063",
      county_code: "014",
      name: "Manyatta",
      ward_codes: ["0311", "0312", "0313", "0314", "0315", "0316"]
    },
    %Constituency{
      code: "064",
      county_code: "014",
      name: "Runyenjes",
      ward_codes: ["0317", "0318", "0319", "0320", "0321", "0322"]
    },
    %Constituency{
      code: "065",
      county_code: "014",
      name: "Mbeere South",
      ward_codes: ["0323", "0324", "0325", "0326", "0327"]
    },
    %Constituency{
      code: "066",
      county_code: "014",
      name: "Mbeere North",
      ward_codes: ["0328", "0329", "0330"]
    },
    %Constituency{
      code: "067",
      county_code: "015",
      name: "Mwingi North",
      ward_codes: ["0331", "0332", "0333", "0334", "0335"]
    },
    %Constituency{
      code: "068",
      county_code: "015",
      name: "Mwingi West",
      ward_codes: ["0336", "0337", "0338", "0339"]
    },
    %Constituency{
      code: "069",
      county_code: "015",
      name: "Mwingi Central",
      ward_codes: ["0340", "0341", "0342", "0343", "0344", "0345"]
    },
    %Constituency{
      code: "070",
      county_code: "015",
      name: "Kitui West",
      ward_codes: ["0346", "0347", "0348", "0349"]
    },
    %Constituency{
      code: "071",
      county_code: "015",
      name: "Kitui Rural",
      ward_codes: ["0350", "0351", "0352", "0353"]
    },
    %Constituency{
      code: "072",
      county_code: "015",
      name: "Kitui Central",
      ward_codes: ["0354", "0355", "0356", "0357", "0358"]
    },
    %Constituency{
      code: "073",
      county_code: "015",
      name: "Kitui East",
      ward_codes: ["0359", "0360", "0361", "0362", "0363", "0364"]
    },
    %Constituency{
      code: "074",
      county_code: "015",
      name: "Kitui South",
      ward_codes: ["0365", "0366", "0367", "0368", "0369", "0370"]
    },
    %Constituency{
      code: "075",
      county_code: "016",
      name: "Masinga",
      ward_codes: ["0371", "0372", "0373", "0374", "0375"]
    },
    %Constituency{
      code: "076",
      county_code: "016",
      name: "Yatta",
      ward_codes: ["0376", "0377", "0378", "0379", "0380"]
    },
    %Constituency{
      code: "077",
      county_code: "016",
      name: "Kangundo",
      ward_codes: ["0381", "0382", "0383", "0384"]
    },
    %Constituency{
      code: "078",
      county_code: "016",
      name: "Matungulu",
      ward_codes: ["0385", "0386", "0387", "0388", "0389"]
    },
    %Constituency{
      code: "079",
      county_code: "016",
      name: "Kathiani",
      ward_codes: ["0390", "0391", "0392", "0393"]
    },
    %Constituency{
      code: "080",
      county_code: "016",
      name: "Mavoko",
      ward_codes: ["0394", "0395", "0396", "0397"]
    },
    %Constituency{
      code: "081",
      county_code: "016",
      name: "Machakos Town",
      ward_codes: ["0398", "0399", "0400", "0401", "0402", "0403", "0404"]
    },
    %Constituency{
      code: "082",
      county_code: "016",
      name: "Mwala",
      ward_codes: ["0405", "0406", "0407", "0408", "0409", "0410"]
    },
    %Constituency{
      code: "083",
      county_code: "017",
      name: "Mbooni",
      ward_codes: ["0411", "0412", "0413", "0414", "0415", "0416"]
    },
    %Constituency{
      code: "084",
      county_code: "017",
      name: "Kilome",
      ward_codes: ["0417", "0418", "0419"]
    },
    %Constituency{
      code: "085",
      county_code: "017",
      name: "Kaiti",
      ward_codes: ["0420", "0421", "0422", "0423"]
    },
    %Constituency{
      code: "086",
      county_code: "017",
      name: "Makueni",
      ward_codes: ["0424", "0425", "0426", "0427", "0428", "0429", "0430"]
    },
    %Constituency{
      code: "087",
      county_code: "017",
      name: "Kibwezi West",
      ward_codes: ["0431", "0432", "0433", "0434", "0435", "0436"]
    },
    %Constituency{
      code: "088",
      county_code: "017",
      name: "Kibwezi East",
      ward_codes: ["0437", "0438", "0439", "0440"]
    },
    %Constituency{
      code: "089",
      county_code: "018",
      name: "Kinangop",
      ward_codes: ["0441", "0442", "0443", "0444", "0445", "0446", "0447", "0448"]
    },
    %Constituency{
      code: "090",
      county_code: "018",
      name: "Kipipiri",
      ward_codes: ["0449", "0450", "0451", "0452"]
    },
    %Constituency{
      code: "091",
      county_code: "018",
      name: "Ol Kalou",
      ward_codes: ["0453", "0454", "0455", "0456", "0457"]
    },
    %Constituency{
      code: "092",
      county_code: "018",
      name: "Ol Jorok",
      ward_codes: ["0458", "0459", "0460", "0461"]
    },
    %Constituency{
      code: "093",
      county_code: "018",
      name: "Ndaragwa",
      ward_codes: ["0462", "0463", "0464", "0465"]
    },
    %Constituency{
      code: "094",
      county_code: "019",
      name: "Tetu",
      ward_codes: ["0466", "0467", "0468"]
    },
    %Constituency{
      code: "095",
      county_code: "019",
      name: "Kieni",
      ward_codes: ["0469", "0470", "0471", "0472", "0473", "0474", "0475", "0476"]
    },
    %Constituency{
      code: "096",
      county_code: "019",
      name: "Mathira",
      ward_codes: ["0477", "0478", "0479", "0480", "0481", "0482"]
    },
    %Constituency{
      code: "097",
      county_code: "019",
      name: "Othaya",
      ward_codes: ["0483", "0484", "0485", "0486"]
    },
    %Constituency{
      code: "098",
      county_code: "019",
      name: "Mukurweini",
      ward_codes: ["0487", "0488", "0489", "0490"]
    },
    %Constituency{
      code: "099",
      county_code: "019",
      name: "Nyeri Town",
      ward_codes: ["0491", "0492", "0493", "0494", "0495"]
    },
    %Constituency{
      code: "100",
      county_code: "020",
      name: "Mwea",
      ward_codes: ["0496", "0497", "0498", "0499", "0500", "0501", "0502", "0503"]
    },
    %Constituency{
      code: "101",
      county_code: "020",
      name: "Gichugu",
      ward_codes: ["0504", "0505", "0506", "0507", "0508"]
    },
    %Constituency{
      code: "102",
      county_code: "020",
      name: "Ndia",
      ward_codes: ["0509", "0510", "0511"]
    },
    %Constituency{
      code: "103",
      county_code: "020",
      name: "Kirinyaga Central",
      ward_codes: ["0512", "0513", "0514", "0515"]
    },
    %Constituency{
      code: "104",
      county_code: "021",
      name: "Kangema",
      ward_codes: ["0516", "0517", "0518"]
    },
    %Constituency{
      code: "105",
      county_code: "021",
      name: "Mathioya",
      ward_codes: ["0519", "0520", "0521"]
    },
    %Constituency{
      code: "106",
      county_code: "021",
      name: "Kiharu",
      ward_codes: ["0522", "0523", "0524", "0525", "0526", "0527"]
    },
    %Constituency{
      code: "107",
      county_code: "021",
      name: "Kigumo",
      ward_codes: ["0528", "0529", "0530", "0531", "0532"]
    },
    %Constituency{
      code: "108",
      county_code: "021",
      name: "Maragwa",
      ward_codes: ["0533", "0534", "0535", "0536", "0537", "0538"]
    },
    %Constituency{
      code: "109",
      county_code: "021",
      name: "Kandara",
      ward_codes: ["0539", "0540", "0541", "0542", "0543", "0544"]
    },
    %Constituency{
      code: "110",
      county_code: "021",
      name: "Gatanga",
      ward_codes: ["0545", "0546", "0547", "0548", "0549", "0550"]
    },
    %Constituency{
      code: "111",
      county_code: "022",
      name: "Gatundu South",
      ward_codes: ["0551", "0552", "0553", "0554"]
    },
    %Constituency{
      code: "112",
      county_code: "022",
      name: "Gatundu North",
      ward_codes: ["0555", "0556", "0557", "0558"]
    },
    %Constituency{
      code: "113",
      county_code: "022",
      name: "Juja",
      ward_codes: ["0559", "0560", "0561", "0562", "0563"]
    },
    %Constituency{
      code: "114",
      county_code: "022",
      name: "Thika Town",
      ward_codes: ["0564", "0565", "0566", "0567", "0568"]
    },
    %Constituency{
      code: "115",
      county_code: "022",
      name: "Ruiru",
      ward_codes: ["0569", "0570", "0571", "0572", "0573", "0574", "0575", "0576"]
    },
    %Constituency{
      code: "116",
      county_code: "022",
      name: "Githunguri",
      ward_codes: ["0577", "0578", "0579", "0580", "0581"]
    },
    %Constituency{
      code: "117",
      county_code: "022",
      name: "Kiambu",
      ward_codes: ["0582", "0583", "0584", "0585"]
    },
    %Constituency{
      code: "118",
      county_code: "022",
      name: "Kiambaa",
      ward_codes: ["0586", "0587", "0588", "0589", "0590"]
    },
    %Constituency{
      code: "119",
      county_code: "022",
      name: "Kabete",
      ward_codes: ["0591", "0592", "0593", "0594", "0595"]
    },
    %Constituency{
      code: "120",
      county_code: "022",
      name: "Kikuyu",
      ward_codes: ["0596", "0597", "0598", "0599", "0600"]
    },
    %Constituency{
      code: "121",
      county_code: "022",
      name: "Limuru",
      ward_codes: ["0601", "0602", "0603", "0604", "0605"]
    },
    %Constituency{
      code: "122",
      county_code: "022",
      name: "Lari",
      ward_codes: ["0606", "0607", "0608", "0609", "0610"]
    },
    %Constituency{
      code: "123",
      county_code: "023",
      name: "Turkana North",
      ward_codes: ["0611", "0612", "0613", "0614", "0615", "0616"]
    },
    %Constituency{
      code: "124",
      county_code: "023",
      name: "Turkana West",
      ward_codes: ["0617", "0618", "0619", "0620", "0621", "0622", "0623"]
    },
    %Constituency{
      code: "125",
      county_code: "023",
      name: "Turkana Central",
      ward_codes: ["0624", "0625", "0626", "0627", "0628"]
    },
    %Constituency{
      code: "126",
      county_code: "023",
      name: "Loima",
      ward_codes: ["0629", "0630", "0631", "0632"]
    },
    %Constituency{
      code: "127",
      county_code: "023",
      name: "Turkana South",
      ward_codes: ["0633", "0634", "0635", "0636", "0637"]
    },
    %Constituency{
      code: "128",
      county_code: "023",
      name: "Turkana East",
      ward_codes: ["0638", "0639", "0640"]
    },
    %Constituency{
      code: "129",
      county_code: "024",
      name: "Kapenguria",
      ward_codes: ["0641", "0642", "0643", "0644", "0645", "0646"]
    },
    %Constituency{
      code: "130",
      county_code: "024",
      name: "Sigor",
      ward_codes: ["0647", "0648", "0649", "0650"]
    },
    %Constituency{
      code: "131",
      county_code: "024",
      name: "Kacheliba",
      ward_codes: ["0651", "0652", "0653", "0654", "0655", "0656"]
    },
    %Constituency{
      code: "132",
      county_code: "024",
      name: "Pokot South",
      ward_codes: ["0657", "0658", "0659", "0660"]
    },
    %Constituency{
      code: "133",
      county_code: "025",
      name: "Samburu West",
      ward_codes: ["0661", "0662", "0663", "0664", "0665"]
    },
    %Constituency{
      code: "134",
      county_code: "025",
      name: "Samburu North",
      ward_codes: ["0666", "0667", "0668", "0669", "0670", "0671"]
    },
    %Constituency{
      code: "135",
      county_code: "025",
      name: "Samburu East",
      ward_codes: ["0672", "0673", "0674", "0675"]
    },
    %Constituency{
      code: "136",
      county_code: "026",
      name: "Kwanza",
      ward_codes: ["0676", "0677", "0678", "0679"]
    },
    %Constituency{
      code: "137",
      county_code: "026",
      name: "Endebess",
      ward_codes: ["0680", "0681", "0682"]
    },
    %Constituency{
      code: "138",
      county_code: "026",
      name: "Saboti",
      ward_codes: ["0683", "0684", "0685", "0686", "0687"]
    },
    %Constituency{
      code: "139",
      county_code: "026",
      name: "Kiminini",
      ward_codes: ["0688", "0689", "0690", "0691", "0692", "0693"]
    },
    %Constituency{
      code: "140",
      county_code: "026",
      name: "Cherangany",
      ward_codes: ["0694", "0695", "0696", "0697", "0698", "0699", "0700"]
    },
    %Constituency{
      code: "141",
      county_code: "027",
      name: "Soy",
      ward_codes: ["0701", "0702", "0703", "0704", "0705", "0706", "0707"]
    },
    %Constituency{
      code: "142",
      county_code: "027",
      name: "Turbo",
      ward_codes: ["0708", "0709", "0710", "0711", "0712", "0713"]
    },
    %Constituency{
      code: "143",
      county_code: "027",
      name: "Moiben",
      ward_codes: ["0714", "0715", "0716", "0717", "0718"]
    },
    %Constituency{
      code: "144",
      county_code: "027",
      name: "Ainabkoi",
      ward_codes: ["0719", "0720", "0721"]
    },
    %Constituency{
      code: "145",
      county_code: "027",
      name: "Kapseret",
      ward_codes: ["0722", "0723", "0724", "0725", "0726"]
    },
    %Constituency{
      code: "146",
      county_code: "027",
      name: "Kesses",
      ward_codes: ["0727", "0728", "0729", "0730"]
    },
    %Constituency{
      code: "147",
      county_code: "028",
      name: "Marakwet East",
      ward_codes: ["0731", "0732", "0733", "0734"]
    },
    %Constituency{
      code: "148",
      county_code: "028",
      name: "Marakwet West",
      ward_codes: ["0735", "0736", "0737", "0738", "0739", "0740"]
    },
    %Constituency{
      code: "149",
      county_code: "028",
      name: "Keiyo North",
      ward_codes: ["0741", "0742", "0743", "0744"]
    },
    %Constituency{
      code: "150",
      county_code: "028",
      name: "Keiyo South",
      ward_codes: ["0745", "0746", "0747", "0748", "0749", "0750"]
    },
    %Constituency{
      code: "151",
      county_code: "029",
      name: "Tinderet",
      ward_codes: ["0751", "0752", "0753", "0754"]
    },
    %Constituency{
      code: "152",
      county_code: "029",
      name: "Aldai",
      ward_codes: ["0755", "0756", "0757", "0758", "0759", "0760"]
    },
    %Constituency{
      code: "153",
      county_code: "029",
      name: "Nandi Hills",
      ward_codes: ["0761", "0762", "0763", "0764"]
    },
    %Constituency{
      code: "154",
      county_code: "029",
      name: "Chesumei",
      ward_codes: ["0765", "0766", "0767", "0768", "0769"]
    },
    %Constituency{
      code: "155",
      county_code: "029",
      name: "Emgwen",
      ward_codes: ["0770", "0771", "0772", "0773"]
    },
    %Constituency{
      code: "156",
      county_code: "029",
      name: "Mosop",
      ward_codes: ["0774", "0775", "0776", "0777", "0778", "0779", "0780"]
    },
    %Constituency{
      code: "157",
      county_code: "030",
      name: "Tiaty",
      ward_codes: ["0781", "0782", "0783", "0784", "0785", "0786", "0787"]
    },
    %Constituency{
      code: "159",
      county_code: "030",
      name: "Baringo Central",
      ward_codes: ["0793", "0794", "0795", "0796", "0797"]
    },
    %Constituency{
      code: "160",
      county_code: "030",
      name: "Baringo South",
      ward_codes: ["0798", "0799", "0800", "0801"]
    },
    %Constituency{
      code: "161",
      county_code: "030",
      name: "Mogotio",
      ward_codes: ["0802", "0803", "0804"]
    },
    %Constituency{
      code: "162",
      county_code: "030",
      name: "Eldama Ravine",
      ward_codes: ["0805", "0806", "0807", "0808", "0809", "0810"]
    },
    %Constituency{
      code: "163",
      county_code: "031",
      name: "Laikipia West",
      ward_codes: ["0811", "0812", "0813", "0814", "0815", "0816"]
    },
    %Constituency{
      code: "164",
      county_code: "031",
      name: "Laikipia East",
      ward_codes: ["0817", "0818", "0819", "0820", "0821"]
    },
    %Constituency{
      code: "165",
      county_code: "031",
      name: "Laikipia North",
      ward_codes: ["0822", "0823", "0824", "0825"]
    },
    %Constituency{
      code: "166",
      county_code: "032",
      name: "Molo",
      ward_codes: ["0826", "0827", "0828", "0829"]
    },
    %Constituency{
      code: "167",
      county_code: "032",
      name: "Njoro",
      ward_codes: ["0830", "0831", "0832", "0833", "0834", "0835"]
    },
    %Constituency{
      code: "168",
      county_code: "032",
      name: "Naivasha",
      ward_codes: ["0836", "0837", "0838", "0839", "0840", "0841", "0842", "0843"]
    },
    %Constituency{
      code: "169",
      county_code: "032",
      name: "Gilgil",
      ward_codes: ["0844", "0845", "0846", "0847", "0848"]
    },
    %Constituency{
      code: "170",
      county_code: "032",
      name: "Kuresoi South",
      ward_codes: ["0849", "0850", "0851", "0852"]
    },
    %Constituency{
      code: "171",
      county_code: "032",
      name: "Kuresoi North",
      ward_codes: ["0853", "0854", "0855", "0856"]
    },
    %Constituency{
      code: "172",
      county_code: "032",
      name: "Subukia",
      ward_codes: ["0857", "0858", "0859"]
    },
    %Constituency{
      code: "173",
      county_code: "032",
      name: "Rongai",
      ward_codes: ["0860", "0861", "0862", "0863", "0864"]
    },
    %Constituency{
      code: "174",
      county_code: "032",
      name: "Bahati",
      ward_codes: ["0865", "0866", "0867", "0868", "0869"]
    },
    %Constituency{
      code: "175",
      county_code: "032",
      name: "Nakuru Town West",
      ward_codes: ["0870", "0871", "0872", "0873", "0874", "0875"]
    },
    %Constituency{
      code: "176",
      county_code: "032",
      name: "Nakuru Town East",
      ward_codes: ["0876", "0877", "0878", "0879", "0880"]
    },
    %Constituency{
      code: "177",
      county_code: "033",
      name: "Kilgoris",
      ward_codes: ["0881", "0882", "0883", "0884", "0885", "0886"]
    },
    %Constituency{
      code: "178",
      county_code: "033",
      name: "Emurua Dikirr",
      ward_codes: ["0887", "0888", "0889", "0890"]
    },
    %Constituency{
      code: "179",
      county_code: "033",
      name: "Narok North",
      ward_codes: ["0891", "0892", "0893", "0894", "0895", "0896"]
    },
    %Constituency{
      code: "180",
      county_code: "033",
      name: "Narok East",
      ward_codes: ["0897", "0898", "0899", "0900"]
    },
    %Constituency{
      code: "181",
      county_code: "033",
      name: "Narok South",
      ward_codes: ["0901", "0902", "0903", "0904", "0905", "0906"]
    },
    %Constituency{
      code: "182",
      county_code: "033",
      name: "Narok West",
      ward_codes: ["0907", "0908", "0909", "0910"]
    },
    %Constituency{
      code: "183",
      county_code: "034",
      name: "Kajiado North",
      ward_codes: ["0911", "0912", "0913", "0914", "0915"]
    },
    %Constituency{
      code: "184",
      county_code: "034",
      name: "Kajiado Central",
      ward_codes: ["0916", "0917", "0918", "0919", "0920"]
    },
    %Constituency{
      code: "185",
      county_code: "034",
      name: "Kajiado East",
      ward_codes: ["0921", "0922", "0923", "0924", "0925"]
    },
    %Constituency{
      code: "186",
      county_code: "034",
      name: "Kajiado West",
      ward_codes: ["0926", "0927", "0928", "0929", "0930"]
    },
    %Constituency{
      code: "187",
      county_code: "034",
      name: "Kajiado South",
      ward_codes: ["0931", "0932", "0933", "0934", "0935"]
    },
    %Constituency{
      code: "188",
      county_code: "035",
      name: "Kipkelion East",
      ward_codes: ["0936", "0937", "0938", "0939"]
    },
    %Constituency{
      code: "189",
      county_code: "035",
      name: "Kipkelion West",
      ward_codes: ["0940", "0941", "0942", "0943"]
    },
    %Constituency{
      code: "190",
      county_code: "035",
      name: "Ainamoi",
      ward_codes: ["0944", "0945", "0946", "0947", "0948", "0949"]
    },
    %Constituency{
      code: "191",
      county_code: "035",
      name: "Bureti",
      ward_codes: ["0950", "0951", "0952", "0953", "0954", "0955", "0956"]
    },
    %Constituency{
      code: "192",
      county_code: "035",
      name: "Belgut",
      ward_codes: ["0957", "0958", "0959", "0960", "0961"]
    },
    %Constituency{
      code: "193",
      county_code: "035",
      name: "SIGOWET/SOIN",
      ward_codes: ["0962", "0963", "0964", "0965"]
    },
    %Constituency{
      code: "194",
      county_code: "036",
      name: "Sotik",
      ward_codes: ["0966", "0967", "0968", "0969", "0970"]
    },
    %Constituency{
      code: "195",
      county_code: "036",
      name: "Chepalungu",
      ward_codes: ["0971", "0972", "0973", "0974", "0975"]
    },
    %Constituency{
      code: "196",
      county_code: "036",
      name: "Bomet East",
      ward_codes: ["0976", "0977", "0978", "0979", "0980"]
    },
    %Constituency{
      code: "197",
      county_code: "036",
      name: "Bomet Central",
      ward_codes: ["0981", "0982", "0983", "0984", "0985"]
    },
    %Constituency{
      code: "198",
      county_code: "036",
      name: "Konoin",
      ward_codes: ["0986", "0987", "0988", "0989", "0990"]
    },
    %Constituency{
      code: "199",
      county_code: "037",
      name: "Lugari",
      ward_codes: ["0991", "0992", "0993", "0994", "0995", "0996"]
    },
    %Constituency{
      code: "200",
      county_code: "037",
      name: "Likuyani",
      ward_codes: ["0997", "0998", "0999", "1000", "1001"]
    },
    %Constituency{
      code: "201",
      county_code: "037",
      name: "Malava",
      ward_codes: ["1002", "1003", "1004", "1005", "1006", "1007", "1008"]
    },
    %Constituency{
      code: "202",
      county_code: "037",
      name: "Lurambi",
      ward_codes: ["1009", "1010", "1011", "1012", "1013", "1014"]
    },
    %Constituency{
      code: "203",
      county_code: "037",
      name: "Navakholo",
      ward_codes: ["1015", "1016", "1017", "1018", "1019"]
    },
    %Constituency{
      code: "204",
      county_code: "037",
      name: "Mumias West",
      ward_codes: ["1020", "1021", "1022", "1023"]
    },
    %Constituency{
      code: "205",
      county_code: "037",
      name: "Mumias East",
      ward_codes: ["1024", "1025", "1026"]
    },
    %Constituency{
      code: "206",
      county_code: "037",
      name: "Matungu",
      ward_codes: ["1027", "1028", "1029", "1030", "1031"]
    },
    %Constituency{
      code: "207",
      county_code: "037",
      name: "Butere",
      ward_codes: ["1032", "1033", "1034", "1035", "1036"]
    },
    %Constituency{
      code: "208",
      county_code: "037",
      name: "Khwisero",
      ward_codes: ["1037", "1038", "1039", "1040"]
    },
    %Constituency{
      code: "209",
      county_code: "037",
      name: "Shinyalu",
      ward_codes: ["1041", "1042", "1043", "1044", "1045", "1046"]
    },
    %Constituency{
      code: "210",
      county_code: "037",
      name: "Ikolomani",
      ward_codes: ["1047", "1048", "1049", "1050"]
    },
    %Constituency{
      code: "211",
      county_code: "038",
      name: "Vihiga",
      ward_codes: ["1051", "1052", "1053", "1054"]
    },
    %Constituency{
      code: "212",
      county_code: "038",
      name: "Sabatia",
      ward_codes: ["1055", "1056", "1057", "1058", "1059", "1060"]
    },
    %Constituency{
      code: "213",
      county_code: "038",
      name: "Hamisi",
      ward_codes: ["1061", "1062", "1063", "1064", "1065", "1066", "1067"]
    },
    %Constituency{
      code: "214",
      county_code: "038",
      name: "Luanda",
      ward_codes: ["1068", "1069", "1070", "1071", "1072"]
    },
    %Constituency{
      code: "215",
      county_code: "038",
      name: "Emuhaya",
      ward_codes: ["1073", "1074", "1075"]
    },
    %Constituency{
      code: "216",
      county_code: "039",
      name: "MT.ELGON",
      ward_codes: ["1076", "1077", "1078", "1079", "1080", "1081"]
    },
    %Constituency{
      code: "217",
      county_code: "039",
      name: "Sirisia",
      ward_codes: ["1082", "1083", "1084"]
    },
    %Constituency{
      code: "218",
      county_code: "039",
      name: "Kabuchai",
      ward_codes: ["1085", "1086", "1087", "1088"]
    },
    %Constituency{
      code: "219",
      county_code: "039",
      name: "Bumula",
      ward_codes: ["1089", "1090", "1091", "1092", "1093", "1094", "1095"]
    },
    %Constituency{
      code: "220",
      county_code: "039",
      name: "Kanduyi",
      ward_codes: ["1096", "1097", "1098", "1099", "1100", "1101", "1102", "1103"]
    },
    %Constituency{
      code: "221",
      county_code: "039",
      name: "Webuye East",
      ward_codes: ["1104", "1105", "1106"]
    },
    %Constituency{
      code: "222",
      county_code: "039",
      name: "Webuye West",
      ward_codes: ["1107", "1108", "1109", "1110"]
    },
    %Constituency{
      code: "223",
      county_code: "039",
      name: "Kimilili",
      ward_codes: ["1111", "1112", "1113", "1114"]
    },
    %Constituency{
      code: "224",
      county_code: "039",
      name: "Tongaren",
      ward_codes: ["1115", "1116", "1117", "1118", "1119", "1120"]
    },
    %Constituency{
      code: "225",
      county_code: "040",
      name: "Teso North",
      ward_codes: ["1121", "1122", "1123", "1124", "1125", "1126"]
    },
    %Constituency{
      code: "226",
      county_code: "040",
      name: "Teso South",
      ward_codes: ["1127", "1128", "1129", "1130", "1131", "1132"]
    },
    %Constituency{
      code: "227",
      county_code: "040",
      name: "Nambale",
      ward_codes: ["1133", "1134", "1135", "1136"]
    },
    %Constituency{
      code: "228",
      county_code: "040",
      name: "Matayos",
      ward_codes: ["1137", "1138", "1139", "1140", "1141"]
    },
    %Constituency{
      code: "229",
      county_code: "040",
      name: "Butula",
      ward_codes: ["1142", "1143", "1144", "1145", "1146", "1147"]
    },
    %Constituency{
      code: "230",
      county_code: "040",
      name: "Funyula",
      ward_codes: ["1148", "1149", "1150", "1151"]
    },
    %Constituency{
      code: "231",
      county_code: "040",
      name: "Budalangi",
      ward_codes: ["1152", "1153", "1154", "1155"]
    },
    %Constituency{
      code: "232",
      county_code: "041",
      name: "Ugenya",
      ward_codes: ["1156", "1157", "1158", "1159"]
    },
    %Constituency{
      code: "233",
      county_code: "041",
      name: "Ugunja",
      ward_codes: ["1160", "1161", "1162"]
    },
    %Constituency{
      code: "234",
      county_code: "041",
      name: "Alego Usonga",
      ward_codes: ["1163", "1164", "1165", "1166", "1167", "1168"]
    },
    %Constituency{
      code: "235",
      county_code: "041",
      name: "Gem",
      ward_codes: ["1169", "1170", "1171", "1172", "1173", "1174"]
    },
    %Constituency{
      code: "236",
      county_code: "041",
      name: "Bondo",
      ward_codes: ["1175", "1176", "1177", "1178", "1179", "1180"]
    },
    %Constituency{
      code: "237",
      county_code: "041",
      name: "Rarieda",
      ward_codes: ["1181", "1182", "1183", "1184", "1185"]
    },
    %Constituency{
      code: "238",
      county_code: "042",
      name: "Kisumu East",
      ward_codes: ["1186", "1187", "1188", "1189", "1190"]
    },
    %Constituency{
      code: "239",
      county_code: "042",
      name: "Kisumu West",
      ward_codes: ["1191", "1192", "1193", "1194", "1195"]
    },
    %Constituency{
      code: "240",
      county_code: "042",
      name: "Kisumu Central",
      ward_codes: ["1196", "1197", "1198", "1199", "1200", "1201"]
    },
    %Constituency{
      code: "241",
      county_code: "042",
      name: "Seme",
      ward_codes: ["1202", "1203", "1204", "1205"]
    },
    %Constituency{
      code: "242",
      county_code: "042",
      name: "Nyando",
      ward_codes: ["1206", "1207", "1208", "1209", "1210"]
    },
    %Constituency{
      code: "243",
      county_code: "042",
      name: "Muhoroni",
      ward_codes: ["1211", "1212", "1213", "1214", "1215"]
    },
    %Constituency{
      code: "244",
      county_code: "042",
      name: "Nyakach",
      ward_codes: ["1216", "1217", "1218", "1219", "1220"]
    },
    %Constituency{
      code: "245",
      county_code: "043",
      name: "Kasipul",
      ward_codes: ["1221", "1222", "1223", "1224", "1225"]
    },
    %Constituency{
      code: "246",
      county_code: "043",
      name: "Kabondo Kasipul",
      ward_codes: ["1226", "1227", "1228", "1229"]
    },
    %Constituency{
      code: "247",
      county_code: "043",
      name: "Karachuonyo",
      ward_codes: ["1230", "1231", "1232", "1233", "1234", "1235", "1236"]
    },
    %Constituency{
      code: "248",
      county_code: "043",
      name: "Rangwe",
      ward_codes: ["1237", "1238", "1239", "1240"]
    },
    %Constituency{
      code: "249",
      county_code: "043",
      name: "Homa Bay Town",
      ward_codes: ["1241", "1242", "1243", "1244"]
    },
    %Constituency{
      code: "250",
      county_code: "043",
      name: "Ndhiwa",
      ward_codes: ["1245", "1246", "1247", "1248", "1249", "1250", "1251"]
    },
    %Constituency{
      code: "251",
      county_code: "043",
      name: "Mbita",
      ward_codes: ["1252", "1253", "1254", "1255", "1256"]
    },
    %Constituency{
      code: "252",
      county_code: "043",
      name: "Suba",
      ward_codes: ["1257", "1258", "1259", "1260"]
    },
    %Constituency{
      code: "253",
      county_code: "044",
      name: "Rongo",
      ward_codes: ["1261", "1262", "1263", "1264"]
    },
    %Constituency{
      code: "254",
      county_code: "044",
      name: "Awendo",
      ward_codes: ["1265", "1266", "1267", "1268"]
    },
    %Constituency{
      code: "255",
      county_code: "044",
      name: "Suna East",
      ward_codes: ["1269", "1270", "1271", "1272"]
    },
    %Constituency{
      code: "256",
      county_code: "044",
      name: "Suna West",
      ward_codes: ["1273", "1274", "1275", "1276"]
    },
    %Constituency{
      code: "257",
      county_code: "044",
      name: "Uriri",
      ward_codes: ["1277", "1278", "1279", "1280", "1281"]
    },
    %Constituency{
      code: "258",
      county_code: "044",
      name: "Nyatike",
      ward_codes: ["1282", "1283", "1284", "1285", "1286", "1287", "1288"]
    },
    %Constituency{
      code: "259",
      county_code: "044",
      name: "Kuria West",
      ward_codes: ["1289", "1290", "1291", "1292", "1293", "1294", "1295"]
    },
    %Constituency{
      code: "260",
      county_code: "044",
      name: "Kuria East",
      ward_codes: ["1296", "1297", "1298", "1299", "1300"]
    },
    %Constituency{
      code: "261",
      county_code: "045",
      name: "Bonchari",
      ward_codes: ["1301", "1302", "1303", "1304"]
    },
    %Constituency{
      code: "262",
      county_code: "045",
      name: "South Mugirango",
      ward_codes: ["1305", "1306", "1307", "1308", "1309", "1310"]
    },
    %Constituency{
      code: "263",
      county_code: "045",
      name: "Bomachoge Borabu",
      ward_codes: ["1311", "1312", "1313", "1314"]
    },
    %Constituency{
      code: "264",
      county_code: "045",
      name: "Bobasi",
      ward_codes: ["1315", "1316", "1317", "1318", "1319", "1320", "1321", "1322"]
    },
    %Constituency{
      code: "265",
      county_code: "045",
      name: "Bomachoge Chache",
      ward_codes: ["1323", "1324", "1325"]
    },
    %Constituency{
      code: "266",
      county_code: "045",
      name: "Nyaribari Masaba",
      ward_codes: ["1326", "1327", "1328", "1329", "1330"]
    },
    %Constituency{
      code: "267",
      county_code: "045",
      name: "Nyaribari Chache",
      ward_codes: ["1331", "1332", "1333", "1334", "1335", "1336"]
    },
    %Constituency{
      code: "268",
      county_code: "045",
      name: "Kitutu Chache North",
      ward_codes: ["1337", "1338", "1339", "1340"]
    },
    %Constituency{
      code: "269",
      county_code: "045",
      name: "Kitutu Chache South",
      ward_codes: ["1341", "1342", "1343", "1344", "1345"]
    },
    %Constituency{
      code: "270",
      county_code: "046",
      name: "Kitutu Masaba",
      ward_codes: ["1346", "1347", "1348", "1349", "1350", "1351"]
    },
    %Constituency{
      code: "271",
      county_code: "046",
      name: "West Mugirango",
      ward_codes: ["1352", "1353", "1354", "1355", "1356"]
    },
    %Constituency{
      code: "272",
      county_code: "046",
      name: "North Mugirango",
      ward_codes: ["1357", "1358", "1359", "1360", "1361"]
    },
    %Constituency{
      code: "273",
      county_code: "046",
      name: "Borabu",
      ward_codes: ["1362", "1363", "1364", "1365"]
    },
    %Constituency{
      code: "274",
      county_code: "047",
      name: "Westlands",
      ward_codes: ["1366", "1367", "1368", "1369", "1370"]
    },
    %Constituency{
      code: "275",
      county_code: "047",
      name: "Dagoretti North",
      ward_codes: ["1371", "1372", "1373", "1374", "1375"]
    },
    %Constituency{
      code: "276",
      county_code: "047",
      name: "Dagoretti South",
      ward_codes: ["1376", "1377", "1378", "1379", "1380"]
    },
    %Constituency{
      code: "277",
      county_code: "047",
      name: "Langata",
      ward_codes: ["1381", "1382", "1383", "1384", "1385"]
    },
    %Constituency{
      code: "278",
      county_code: "047",
      name: "Kibra",
      ward_codes: ["1386", "1387", "1388", "1389", "1390"]
    },
    %Constituency{
      code: "279",
      county_code: "047",
      name: "Roysambu",
      ward_codes: ["1391", "1392", "1393", "1394", "1395"]
    },
    %Constituency{
      code: "280",
      county_code: "047",
      name: "Kasarani",
      ward_codes: ["1396", "1397", "1398", "1399", "1400"]
    },
    %Constituency{
      code: "281",
      county_code: "047",
      name: "Ruaraka",
      ward_codes: ["1401", "1402", "1403", "1404", "1405"]
    },
    %Constituency{
      code: "282",
      county_code: "047",
      name: "Embakasi South",
      ward_codes: ["1406", "1407", "1408", "1409", "1410"]
    },
    %Constituency{
      code: "283",
      county_code: "047",
      name: "Embakasi North",
      ward_codes: ["1411", "1412", "1413", "1414", "1415"]
    },
    %Constituency{
      code: "284",
      county_code: "047",
      name: "Embakasi Central",
      ward_codes: ["1416", "1417", "1418", "1419", "1420"]
    },
    %Constituency{
      code: "285",
      county_code: "047",
      name: "Embakasi East",
      ward_codes: ["1421", "1422", "1423", "1424", "1425"]
    },
    %Constituency{
      code: "286",
      county_code: "047",
      name: "Embakasi West",
      ward_codes: ["1426", "1427", "1428", "1429"]
    },
    %Constituency{
      code: "287",
      county_code: "047",
      name: "Makadara",
      ward_codes: ["1430", "1431", "1432", "1433"]
    },
    %Constituency{
      code: "288",
      county_code: "047",
      name: "Kamukunji",
      ward_codes: ["1434", "1435", "1436", "1437", "1438"]
    },
    %Constituency{
      code: "289",
      county_code: "047",
      name: "Starehe",
      ward_codes: ["1439", "1440", "1441", "1442", "1443", "1444"]
    },
    %Constituency{
      code: "290",
      county_code: "047",
      name: "Mathare",
      ward_codes: ["1445", "1446", "1447", "1448", "1449", "1450"]
    }
  ]

  @doc """
  Returns all constituencies data.
  """
  def all, do: @constituencies

  @doc """
  Gets a constituency by constituency code or name (case insensitive).
  Returns `nil` if the constituency is not found.

  ## Examples

      iex> constituency = Kenya.Data.Constituencies.get("001")
      iex> constituency.name
      "Mombasa"

      iex> constituency = Kenya.Data.Constituencies.get("Mombasa")
      iex> constituency.name
      "Mombasa"

  """
  def get(identifier) when is_binary(identifier) do
    Utils.get(@constituencies, identifier)
  end

  def get(code) when is_integer(code) do
    identifier = String.pad_leading(to_string(code), 3, "0")
    get(identifier)
  end

  @doc """
  Gets all constituencies in a county by county code.
  """
  @spec in_county(String.t() | integer()) :: [Constituency.t()]
  def in_county(identifier) when is_binary(identifier) do
    case Kenya.get_county(identifier) do
      nil -> []
      county -> Enum.map(county.constituency_codes, &Kenya.get_constituency/1)
    end
  end

  def in_county(county_id) when is_integer(county_id) do
    identifier = String.pad_leading(to_string(county_id), 3, "0")
    in_county(identifier)
  end

  # @doc """
  # Gets all ward codes for a constituency.
  # """
  # def get_ward_codes(constituency_code) do
  #   case get(constituency_code) do
  #     nil -> []
  #     constituency -> constituency.ward_codes
  #   end
  # end

  @doc """
  Gets constituency code by constituency ID (for backwards compatibility).
  """
  def get_code_by_id(id) when is_integer(id) do
    String.pad_leading(to_string(id), 3, "0")
  end

  @doc """
  Filters constituencies based on given criteria.

  ## Examples

      iex> mombasa_constituencies = Kenya.Data.Constituencies.filter_by(%{county_code: "001"})
      iex> length(mombasa_constituencies)
      6

  """
  def filter_by(criteria) when is_map(criteria) do
    Enum.filter(@constituencies, fn constituency ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(constituency, key) == value
      end)
    end)
  end

  @doc """
  Returns constituencies grouped by county.

  ## Examples

      iex> by_county = Kenya.Data.Constituencies.grouped_by_county()
      iex> Map.has_key?(by_county, "001")
      true

  """
  def grouped_by_county do
    @constituencies
    |> Enum.group_by(& &1.county_code)
  end

  def constituency(code), do: Enum.find(@constituencies, &(&1.code == code))
end
