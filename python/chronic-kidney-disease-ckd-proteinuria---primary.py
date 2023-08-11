# Siobhan Reilly, Ivan Olier, Claire Planner, Tim Doran, David Reeves, Darren M Ashcroft, Linda Gask, Evangelos Kontopantelis, 2023.

import sys, csv, re

codes = [{"code":"1Z1B.00","system":"readv2"},{"code":"1Z1C.00","system":"readv2"},{"code":"1Z1D.00","system":"readv2"},{"code":"1Z1E.00","system":"readv2"},{"code":"1Z1F.00","system":"readv2"},{"code":"1Z1G.00","system":"readv2"},{"code":"1Z1H.00","system":"readv2"},{"code":"1Z1J.00","system":"readv2"},{"code":"1Z1K.00","system":"readv2"},{"code":"1Z1L.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-kidney-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-kidney-disease-ckd-proteinuria---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-kidney-disease-ckd-proteinuria---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-kidney-disease-ckd-proteinuria---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
