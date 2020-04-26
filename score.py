import nltk
import sys
import random
import language_check
from nltk.stem import PorterStemmer
from nltk import word_tokenize
from collections import Counter
from nltk.corpus import stopwords
from nltk.corpus import wordnet
from nltk.classify import NaiveBayesClassifier
#import senti
def score():
	percent_a= 0
	percent_b=0	
	f3 = open("lidn.txt", "r")
	sent = f3.read()
	tokens= word_tokenize(sent)
	###COUNT TOTAL WORDS
	words = sent.split(" ")
	marks=50
	if len(words)<10:
		marks = 0
	elif len(words)> 10:
		marks=100
	
		###COUNT FREQUENT WORDS
		freq= Counter(tokens)
		stemmer=PorterStemmer()
		all_token_stemmed =[]
		for token in tokens:
		    if len(token)>1:
		        stemmed_token = stemmer.stem(token)
		        all_token_stemmed.append(stemmed_token)
		freq= Counter(all_token_stemmed)
		english_stopwords=stopwords.words('english')
		percent=0
		variety=0
		final=0
		for token,count in freq.most_common(10):
		    final=final+count
		    if token in english_stopwords or len(token)<2:
		        continue
		    variety=variety+count  
		percent_a=(variety/final)*100
		vocab_score= (percent_a*6)/100+3
		tool = language_check.LanguageTool('en-US')
		matches = tool.check(sent)
		percent_b=100-((len(matches)/len(words))*100)
		lexical_score= (percent_b*6)/100+3
	total_score=(percent_a+percent_b+marks)/3
	print(round(total_score,4) )
	
	jd = round(total_score,4)
	f5 = open("marks1.txt", "w")
	#f6 = open("marks2.txt", "a+")
	f5.write(str(jd))
	#f6.write("Test"+str(jd)+",")
	f5.close()
	#f6.close()
score()