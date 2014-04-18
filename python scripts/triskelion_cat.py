from datetime import datetime

loc_offers = "/Users/Leah/Documents/kaggle/offers.csv"
loc_transactions = "/Users/Leah/Documents/kaggle/transactions.csv"
loc_reduced = "/Users/Leah/Documents/kaggle/company.csv" # will be created

def reduce_data(loc_offers, loc_transactions, loc_reduced):

  start = datetime.now()
  #get all categories on offer in a dict
  offers = {}
  for e, line in enumerate( open(loc_offers, "U") ):
     offers[ line.split(",")[3] ] = 1

  #open output file
  with open(loc_reduced, "wb") as outfile:
    #go through transactions file and reduce
    reduced = 0
    for e, line in enumerate( open(loc_transactions) ):
      if e == 0:
        outfile.write( line ) #print header
      else:
        #only write when category in offers dict
          if line.split(",")[4] in offers:
            outfile.write( line )
            reduced += 1
      #progress
      if e % 5000000 == 0:
        print e, reduced, datetime.now() - start
  print e, reduced, datetime.now() - start

reduce_data(loc_offers, loc_transactions, loc_reduced)
