# Import packages
import os
import json

# Read in corpus
user = os.getenv('USER')
corpusdir = 'corpus/'
corpus = []
for infile in os.listdir(corpusdir):
#TODO loop through the files in directory corpus/ and add to corpus

# Import language models and pipeline elements
from transformers import AutoTokenizer, AutoModelForTokenClassification
#TODO define model and tokenizer, using from_pretrained("Jean-Baptiste/roberta-large-ner-english")

# Process text
from transformers import pipeline
#TODO define pipeline (aggregation_strategy="simple") and apply it to corpus

# Export data to json
with open('/scratch/users/{}/outputs/data.json'.format(user), 'w', encoding='utf-8') as f:
    json.dump(str(entities), f, ensure_ascii=False, indent=4)
