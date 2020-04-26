import nltk
from sklearn.feature_extraction.text import CountVectorizer
f3 = open("lidn.txt", "r")
sent = f3.read()
#sent = "it is bad. hate it"
def sentiment(sent):
    def format_sentence(sent):
        return({word: True for word in nltk.word_tokenize(sent)})
    pos = []
    with open("./pos_tweets.txt", encoding="utf8") as f:
        for i in f: 
            pos.append([format_sentence(i), 'pos'])
    neg = []
    with open("./neg_tweets.txt", encoding="utf8") as f:
        for i in f: 
            neg.append([format_sentence(i), 'neg'])
    training = pos[:int((.8)*len(pos))] + neg[:int((.8)*len(neg))]
    test = pos[int((.8)*len(pos)):] + neg[int((.8)*len(neg)):]
    from nltk.classify import NaiveBayesClassifier
    classifier = NaiveBayesClassifier.train(training)
    print(classifier.classify(format_sentence(sent)))


sentiment(sent)

