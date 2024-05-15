# import nltk
# nltk.download('punkt')


from transformers import pipeline

qa = pipeline("summarization")
s = qa(""" Most researchers define Avialae as branch-based clade, though definitions vary. Many authors have used a definition similar to "all theropods closer to birds than to Deinonychus",[16][17] with Troodon being sometimes added as a second external specifier in case it is closer to birds than to Deinonychus.[18] Avialae is also occasionally defined as an apomorphy-based clade (that is, one based on physical characteristics). Jacques Gauthier, who named Avialae in 1986, re-defined it in 2001 as all dinosaurs that possessed feathered wings used in flapping flight, and the birds that descended from them.[13][19]

Despite being currently one of the most widely used, the crown-group definition of Aves has been criticised by some researchers. Lee and Spencer (1997) argued that, contrary to what Gauthier defended, this definition would not increase the stability of the clade and the exact content of Aves will always be uncertain because any defined clade (either crown or not) will have few synapomorphies distinguishing it from its closest relatives. Their alternative definition is synonymous to Avifilopluma """)
print(s)