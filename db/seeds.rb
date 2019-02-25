# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#destroy everything
User.destroy_all
Speech.destroy_all
Speaker.destroy_all
Contribution.destroy_all
Comment.destroy_all
Vote.destroy_all
Category.destroy_all

puts '~~~destroying database~~~'

#our users
User.create({
  username: 'Alfons',
  email: 'alfons@speechless.com',
  password: '123456'
})
User.create({
  username: 'Chris',
  email: 'chris@speechless.com',
  password: '123456'
})
User.create({
  username: 'David',
  email: 'david@speechless.com',
  password: '123456'
})

#random users
10.times do
  user = User.create(
    username: Faker::FunnyName.name,
    email: Faker::Internet.email,
    password: '123456'
    )
end

#categories
cat = %q[politics sports history antiquity fiction economics celebrities]
Category.create({
  name: cat[0]
})
Category.create({
  name: cat[1]
})
Category.create({
  name: cat[2]
})
Category.create({
  name: cat[3]
})
Category.create({
  name: cat[4]
})
Category.create({
  name: cat[5]
})
Category.create({
  name: cat[6]
})

#speakers
10.times do
  speaker = Speaker.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    date_of_birth: Faker::Date.birthday
    )
end

#speeches
Speech.create({
  title: 'Socrates Apology (by Plato)',
  date: Faker::Date.backward,
  country: Faker::Address.country,
  city: Faker::Address.city,
  category: 'history',
  content: "How you, O Athenians, have been affected by my accusers, I cannot tell. But I know that they almost made me forget who I was, so persuasively did they speak. And yet they have hardly uttered a word of truth.
But of the many falsehoods told by them, there was one which quite amazed me;--I mean when they said that you should be upon your guard and not allow yourselves to be deceived by the force of my eloquence. To say this, when they were certain to be detected as soon as I opened my lips and proved myself to be anything but a great speaker, did indeed appear to me most shameless--unless by the force of eloquence they mean the force of truth; for is such is their meaning, I admit that I am eloquent. But in how different a way from theirs! Well, as I was saying, they have scarcely spoken the truth at all; but from me you shall hear the whole truth: not, however, delivered after their manner in a set oration duly ornamented with words and phrases. No, by heaven! but I shall use the words and arguments which occur to me at the moment; for I am confident in the justice of my cause (Or, I am certain that I am right in taking this course.): at my time of life I ought not to be appearing before you, O men of Athens, in the character of a juvenile orator--let no one expect it of me. And I must beg of you to grant me a favour:--If I defend myself in my accustomed manner, and you hear me using the words which I have been in the habit of using in the agora, at the tables of the money-changers, or anywhere else, I would ask you not to be surprised, and not to interrupt me on this account. For I am more than seventy years of age, and appearing now for the first time in a court of law, I am quite a stranger to the language of the place; and therefore I would have you regard me as if I were really a stranger, whom you would excuse if he spoke in his native tongue, and after the fashion of his country:--Am I making an unfair request of you? Never mind the manner, which may or may not be good; but think only of the truth of my words, and give heed to that: let the speaker speak truly and the judge decide justly.
And first, I have to reply to the older charges and to my first accusers, and then I will go on to the later ones. For of old I have had many accusers, who have accused me falsely to you during many years; and I am more afraid of them than of Anytus and his associates, who are dangerous, too, in their own way. But far more dangerous are the others, who began when you were children, and took possession of your minds with their falsehoods, telling of one Socrates, a wise man, who speculated about the heaven above, and searched into the earth beneath, and made the worse appear the better cause. The disseminators of this tale are the accusers whom I dread; for their hearers are apt to fancy that such enquirers do not believe in the existence of the gods. And they are many, and their charges against me are of ancient date, and they were made by them in the days when you were more impressible than you are now--in childhood, or it may have been in youth--and the cause when heard went by default, for there was none to answer. And hardest of all, I do not know and cannot tell the names of my accusers; unless in the chance case of a Comic poet. All who from envy and malice have persuaded you--some of them having first convinced themselves--all this class of men are most difficult to deal with; for I cannot have them up here, and cross-examine them, and therefore I must simply fight with shadows in my own defence, and argue when there is no one who answers. I will ask you then to assume with me, as I was saying, that my opponents are of two kinds; one recent, the other ancient: and I hope that you will see the propriety of my answering the latter first, for these accusations you heard long before the others, and much oftener.
Well, then, I must make my defence, and endeavour to clear away in a short time, a slander which has lasted a long time. May I succeed, if to succeed be for my good and yours, or likely to avail me in my cause! The task is not an easy one; I quite understand the nature of it. And so leaving the event with God, in obedience to the law I will now make my defence.
I will begin at the beginning, and ask what is the accusation which has given rise to the slander of me, and in fact has encouraged Meletus to proof this charge against me. Well, what do the slanderers say? They shall be my prosecutors, and I will sum up their words in an affidavit: 'Socrates is an evil-doer, and a curious person, who searches into things under the earth and in heaven, and he makes the worse appear the better cause; and he teaches the aforesaid doctrines to others.' Such is the nature of the accusation: it is just what you have yourselves seen in the comedy of Aristophanes (Aristoph., Clouds.), who has introduced a man whom he calls Socrates, going about and saying that he walks in air, and talking a deal of nonsense concerning matters of which I do not pretend to know either much or little--not that I mean to speak disparagingly of any one who is a student of natural philosophy. I should be very sorry if Meletus could bring so grave a charge against me. But the simple truth is, O Athenians, that I have nothing to do with physical speculations. Very many of those here present are witnesses to the truth of this, and to them I appeal. Speak then, you who have heard me, and tell your neighbours whether any of you have ever known me hold forth in few words or in many upon such matters...You hear their answer. And from what they say of this part of the charge you will be able to judge of the truth of the rest.
As little foundation is there for the report that I am a teacher, and take money; this accusation has no more truth in it than the other. Although, if a man were really able to instruct mankind, to receive money for giving instruction would, in my opinion, be an honour to him. There is Gorgias of Leontium, and Prodicus of Ceos, and Hippias of Elis, who go the round of the cities, and are able to persuade the young men to leave their own citizens by whom they might be taught for nothing, and come to them whom they not only pay, but are thankful if they may be allowed to pay them. There is at this time a Parian philosopher residing in Athens, of whom I have heard; and I came to hear of him in this way:--I came across a man who has spent a world of money on the Sophists, Callias, the son of Hipponicus, and knowing that he had sons, I asked him: 'Callias,' I said, 'if your two sons were foals or calves, there would be no difficulty in finding some one to put over them; we should hire a trainer of horses, or a farmer probably, who would improve and perfect them in their own proper virtue and excellence; but as they are human beings, whom are you thinking of placing over them? Is there any one who understands human and political virtue? You must have thought about the matter, for you have sons; is there any one?' 'There is,' he said. 'Who is he?' said I; 'and of what country? and what does he charge?' 'Evenus the Parian,' he replied; 'he is the man, and his charge is five minae.' Happy is Evenus, I said to myself, if he really has this wisdom, and teaches at such a moderate charge. Had I the same, I should have been very proud and conceited; but the truth is that I have no knowledge of the kind.
I dare say, Athenians, that some one among you will reply, 'Yes, Socrates, but what is the origin of these accusations which are brought against you; there must have been something strange which you have been doing? All these rumours and this talk about you would never have arisen if you had been like other men: tell us, then, what is the cause of them, for we should be sorry to judge hastily of you.' Now I regard this as a fair challenge, and I will endeavour to explain to you the reason why I am called wise and have such an evil fame. Please to attend then. And although some of you may think that I am joking, I declare that I will tell you the entire truth. Men of Athens, this reputation of mine has come of a certain sort of wisdom which I possess. If you ask me what kind of wisdom, I reply, wisdom such as may perhaps be attained by man, for to that extent I am inclined to believe that I am wise; whereas the persons of whom I was speaking have a superhuman wisdom which I may fail to describe, because I have it not myself; and he who says that I have, speaks falsely, and is taking away my character. And here, O men of Athens, I must beg you not to interrupt me, even if I seem to say something extravagant. For the word which I will speak is not mine. I will refer you to a witness who is worthy of credit; that witness shall be the God of Delphi--he will tell you about my wisdom, if I have any, and of what sort it is. You must have known Chaerephon; he was early a friend of mine, and also a friend of yours, for he shared in the recent exile of the people, and returned with you. Well, Chaerephon, as you know, was very impetuous in all his doings, and he went to Delphi and boldly asked the oracle to tell him whether--as I was saying, I must beg you not to interrupt--he asked the oracle to tell him whether anyone was wiser than I was, and the Pythian prophetess answered, that there was no man wiser. Chaerephon is dead himself; but his brother, who is in court, will confirm the truth of what I am saying.
Why do I mention this? Because I am going to explain to you why I have such an evil name. When I heard the answer, I said to myself, What can the god mean? and what is the interpretation of his riddle? for I know that I have no wisdom, small or great. What then can he mean when he says that I am the wisest of men? And yet he is a god, and cannot lie; that would be against his nature. After long consideration, I thought of a method of trying the question. I reflected that if I could only find a man wiser than myself, then I might go to the god with a refutation in my hand. I should say to him, 'Here is a man who is wiser than I am; but you said that I was the wisest.' Accordingly I went to one who had the reputation of wisdom, and observed him--his name I need not mention; he was a politician whom I selected for examination--and the result was as follows: When I began to talk with him, I could not help thinking that he was not really wise, although he was thought wise by many, and still wiser by himself; and thereupon I tried to explain to him that he thought himself wise, but was not really wise; and the consequence was that he hated me, and his enmity was shared by several who were present and heard me. So I left him, saying to myself, as I went away: Well, although I do not suppose that either of us knows anything really beautiful and good, I am better off than he is,--for he knows nothing, and thinks that he knows; I neither know nor think that I know. In this latter particular, then, I seem to have slightly the advantage of him. Then I went to another who had still higher pretensions to wisdom, and my conclusion was exactly the same. Whereupon I made another enemy of him, and of many others besides him.
Then I went to one man after another, being not unconscious of the enmity which I provoked, and I lamented and feared this: but necessity was laid upon me,--the word of God, I thought, ought to be considered first. And I said to myself, Go I must to all who appear to know, and find out the meaning of the oracle. And I swear to you, Athenians, by the dog I swear!--for I must tell you the truth--the result of my mission was just this: I found that the men most in repute were all but the most foolish; and that others less esteemed were really wiser and better. I will tell you the tale of my wanderings and of the 'Herculean' labours, as I may call them, which I endured only to find at last the oracle irrefutable. After the politicians, I went to the poets; tragic, dithyrambic, and all sorts. And there, I said to myself, you will be instantly detected; now you will find out that you are more ignorant than they are. Accordingly, I took them some of the most elaborate passages in their own writings, and asked what was the meaning of them--thinking that they would teach me something. Will you believe me? I am almost ashamed to confess the truth, but I must say that there is hardly a person present who would not have talked better about their poetry than they did themselves. Then I knew that not by wisdom do poets write poetry, but by a sort of genius and inspiration; they are like diviners or soothsayers who also say many fine things, but do not understand the meaning of them. The poets appeared to me to be much in the same case; and I further observed that upon the strength of their poetry they believed themselves to be the wisest of men in other things in which they were not wise. So I departed, conceiving myself to be superior to them for the same reason that I was superior to the politicians.
At last I went to the artisans. I was conscious that I knew nothing at all, as I may say, and I was sure that they knew many fine things; and here I was not mistaken, for they did know many things of which I was ignorant, and in this they certainly were wiser than I was. But I observed that even the good artisans fell into the same error as the poets;--because they were good workmen they thought that they also knew all sorts of high matters, and this defect in them overshadowed their wisdom; and therefore I asked myself on behalf of the oracle, whether I would like to be as I was, neither having their knowledge nor their ignorance, or like them in both; and I made answer to myself and to the oracle that I was better off as I was.
This inquisition has led to my having many enemies of the worst and most dangerous kind, and has given occasion also to many calumnies. And I am called wise, for my hearers always imagine that I myself possess the wisdom which I find wanting in others: but the truth is, O men of Athens, that God only is wise; and by his answer he intends to show that the wisdom of men is worth little or nothing; he is not speaking of Socrates, he is only using my name by way of illustration, as if he said, He, O men, is the wisest, who, like Socrates, knows that his wisdom is in truth worth nothing. And so I go about the world, obedient to the god, and search and make enquiry into the wisdom of any one, whether citizen or stranger, who appears to be wise; and if he is not wise, then in vindication of the oracle I show him that he is not wise; and my occupation quite absorbs me, and I have no time to give either to any public matter of interest or to any concern of my own, but I am in utter poverty by reason of my devotion to the god.
There is another thing:--young men of the richer classes, who have not much to do, come about me of their own accord; they like to hear the pretenders examined, and they often imitate me, and proceed to examine others; there are plenty of persons, as they quickly discover, who think that they know something, but really know little or nothing; and then those who are examined by them instead of being angry with themselves are angry with me: This confounded Socrates, they say; this villainous misleader of youth!--and then if somebody asks them, Why, what evil does he practise or teach? they do not know, and cannot tell; but in order that they may not appear to be at a loss, they repeat the ready-made charges which are used against all philosophers about teaching things up in the clouds and under the earth, and having no gods, and making the worse appear the better cause; for they do not like to confess that their pretence of knowledge has been detected--which is the truth; and as they are numerous and ambitious and energetic, and are drawn up in battle array and have persuasive tongues, they have filled your ears with their loud and inveterate calumnies. And this is the reason why my three accusers, Meletus and Anytus and Lycon, have set upon me; Meletus, who has a quarrel with me on behalf of the poets; Anytus, on behalf of the craftsmen and politicians; Lycon, on behalf of the rhetoricians: and as I said at the beginning, I cannot expect to get rid of such a mass of calumny all in a moment. And this, O men of Athens, is the truth and the whole truth; I have concealed nothing, I have dissembled nothing. And yet, I know that my plainness of speech makes them hate me, and what is their hatred but a proof that I am speaking the truth?--Hence has arisen the prejudice against me; and this is the reason of it, as you will find out either in this or in any future enquiry.
I have said enough in my defence against the first class of my accusers; I turn to the second class. They are headed by Meletus, that good man and true lover of his country, as he calls himself. Against these, too, I must try to make a defence:--Let their affidavit be read: it contains something of this kind: It says that Socrates is a doer of evil, who corrupts the youth; and who does not believe in the gods of the state, but has other new divinities of his own. Such is the charge; and now let us examine the particular counts. He says that I am a doer of evil, and corrupt the youth; but I say, O men of Athens, that Meletus is a doer of evil, in that he pretends to be in earnest when he is only in jest, and is so eager to bring men to trial from a pretended zeal and interest about matters in which he really never had the smallest interest. And the truth of this I will endeavour to prove to you.
Come hither, Meletus, and let me ask a question of you. You think a great deal about the improvement of youth?
Yes, I do.
Tell the judges, then, who is their improver; for you must know, as you have taken the pains to discover their corrupter, and are citing and accusing me before them. Speak, then, and tell the judges who their improver is.--Observe, Meletus, that you are silent, and have nothing to say. But is not this rather disgraceful, and a very considerable proof of what I was saying, that you have no interest in the matter? Speak up, friend, and tell us who their improver is.
The laws.
But that, my good sir, is not my meaning. I want to know who the person is, who, in the first place, knows the laws.
The judges, Socrates, who are present in court.
What, do you mean to say, Meletus, that they are able to instruct and improve youth?
Certainly they are.
What, all of them, or some only and not others?
All of them.
By the goddess Here, that is good news! There are plenty of improvers, then. And what do you say of the audience,--do they improve them?
Yes, they do.
And the senators?
Yes, the senators improve them.
But perhaps the members of the assembly corrupt them?--or do they too improve them?
They improve them.
Then every Athenian improves and elevates them; all with the exception of myself; and I alone am their corrupter? Is that what you affirm?
That is what I stoutly affirm.
I am very unfortunate if you are right. But suppose I ask you a question: How about horses? Does one man do them harm and all the world good? Is not the exact opposite the truth? One man is able to do them good, or at least not many;--the trainer of horses, that is to say, does them good, and others who have to do with them rather injure them? Is not that true, Meletus, of horses, or of any other animals? Most assuredly it is; whether you and Anytus say yes or no. Happy indeed would be the condition of youth if they had one corrupter only, and all the rest of the world were their improvers. But you, Meletus, have sufficiently shown that you never had a thought about the young: your carelessness is seen in your not caring about the very things which you bring against me.
And now, Meletus, I will ask you another question--by Zeus I will: Which is better, to live among bad citizens, or among good ones? Answer, friend, I say; the question is one which may be easily answered. Do not the good do their neighbours good, and the bad do them evil?
Certainly.
And is there anyone who would rather be injured than benefited by those who live with him? Answer, my good friend, the law requires you to answer--does any one like to be injured?
Certainly not.
And when you accuse me of corrupting and deteriorating the youth, do you allege that I corrupt them intentionally or unintentionally?
Intentionally, I say.
But you have just admitted that the good do their neighbours good, and the evil do them evil. Now, is that a truth which your superior wisdom has recognized thus early in life, and am I, at my age, in such darkness and ignorance as not to know that if a man with whom I have to live is corrupted by me, I am very likely to be harmed by him; and yet I corrupt him, and intentionally, too--so you say, although neither I nor any other human being is ever likely to be convinced by you. But either I do not corrupt them, or I corrupt them unintentionally; and on either view of the case you lie. If my offence is unintentional, the law has no cognizance of unintentional offences: you ought to have taken me privately, and warned and admonished me; for if I had been better advised, I should have left off doing what I only did unintentionally--no doubt I should; but you would have nothing to say to me and refused to teach me. And now you bring me up in this court, which is a place not of instruction, but of punishment.
It will be very clear to you, Athenians, as I was saying, that Meletus has no care at all, great or small, about the matter. But still I should like to know, Meletus, in what I am affirmed to corrupt the young. I suppose you mean, as I infer from your indictment, that I teach them not to acknowledge the gods which the state acknowledges, but some other new divinities or spiritual agencies in their stead. These are the lessons by which I corrupt the youth, as you say.
Yes, that I say emphatically.
Then, by the gods, Meletus, of whom we are speaking, tell me and the court, in somewhat plainer terms, what you mean! for I do not as yet understand whether you affirm that I teach other men to acknowledge some gods, and therefore that I do believe in gods, and am not an entire atheist--this you do not lay to my charge,--but only you say that they are not the same gods which the city recognizes--the charge is that they are different gods. Or, do you mean that I am an atheist simply, and a teacher of atheism?
I mean the latter--that you are a complete atheist.
What an extraordinary statement! Why do you think so, Meletus? Do you mean that I do not believe in the godhead of the sun or moon, like other men?
I assure you, judges, that he does not: for he says that the sun is stone, and the moon earth.
Friend Meletus, you think that you are accusing Anaxagoras: and you have but a bad opinion of the judges, if you fancy them illiterate to such a degree as not to know that these doctrines are found in the books of Anaxagoras the Clazomenian, which are full of them. And so, forsooth, the youth are said to be taught them by Socrates, when there are not unfrequently exhibitions of them at the theatre (Probably in allusion to Aristophanes who caricatured, and to Euripides who borrowed the notions of Anaxagoras, as well as to other dramatic poets.) (price of admission one drachma at the most); and they might pay their money, and laugh at Socrates if he pretends to father these extraordinary views. And so, Meletus, you really think that I do not believe in any god?
I swear by Zeus that you believe absolutely in none at all.
Nobody will believe you, Meletus, and I am pretty sure that you do not believe yourself. I cannot help thinking, men of Athens, that Meletus is reckless and impudent, and that he has written this indictment in a spirit of mere wantonness and youthful bravado. Has he not compounded a riddle, thinking to try me? He said to himself:--I shall see whether the wise Socrates will discover my facetious contradiction, or whether I shall be able to deceive him and the rest of them. For he certainly does appear to me to contradict himself in the indictment as much as if he said that Socrates is guilty of not believing in the gods, and yet of believing in them--but this is not like a person who is in earnest.
I should like you, O men of Athens, to join me in examining what I conceive to be his inconsistency; and do you, Meletus, answer. And I must remind the audience of my request that they would not make a disturbance if I speak in my accustomed manner:
Did ever man, Meletus, believe in the existence of human things, and not of human beings?...I wish, men of Athens, that he would answer, and not be always trying to get up an interruption. Did ever any man believe in horsemanship, and not in horses? or in flute-playing, and not in flute-players? No, my friend; I will answer to you and to the court, as you refuse to answer for yourself. There is no man who ever did. But now please to answer the next question: Can a man believe in spiritual and divine agencies, and not in spirits or demigods?
He cannot.
How lucky I am to have extracted that answer, by the assistance of the court! But then you swear in the indictment that I teach and believe in divine or spiritual agencies (new or old, no matter for that); at any rate, I believe in spiritual agencies,--so you say and swear in the affidavit; and yet if I believe in divine beings, how can I help believing in spirits or demigods;--must I not? To be sure I must; and therefore I may assume that your silence gives consent. Now what are spirits or demigods? Are they not either gods or the sons of gods?
Certainly they are.
But this is what I call the facetious riddle invented by you: the demigods or spirits are gods, and you say first that I do not believe in gods, and then again that I do believe in gods; that is, if I believe in demigods. For if the demigods are the illegitimate sons of gods, whether by the nymphs or by any other mothers, of whom they are said to be the sons--what human being will ever believe that there are no gods if they are the sons of gods? You might as well affirm the existence of mules, and deny that of horses and asses. Such nonsense, Meletus, could only have been intended by you to make trial of me. You have put this into the indictment because you had nothing real of which to accuse me. But no one who has a particle of understanding will ever be convinced by you that the same men can believe in divine and superhuman things, and yet not believe that there are gods and demigods and heroes.
I have said enough in answer to the charge of Meletus: any elaborate defence is unnecessary, but I know only too well how many are the enmities which I have incurred, and this is what will be my destruction if I am destroyed;--not Meletus, nor yet Anytus, but the envy and detraction of the world, which has been the death of many good men, and will probably be the death of many more; there is no danger of my being the last of them.
Some one will say: And are you not ashamed, Socrates, of a course of life which is likely to bring you to an untimely end? To him I may fairly answer: There you are mistaken: a man who is good for anything ought not to calculate the chance of living or dying; he ought only to consider whether in doing anything he is doing right or wrong--acting the part of a good man or of a bad. Whereas, upon your view, the heroes who fell at Troy were not good for much, and the son of Thetis above all, who altogether despised danger in comparison with disgrace; and when he was so eager to slay Hector, his goddess mother said to him, that if he avenged his companion Patroclus, and slew Hector, he would die himself--'Fate,' she said, in these or the like words, 'waits for you next after Hector;' he, receiving this warning, utterly despised danger and death, and instead of fearing them, feared rather to live in dishonour, and not to avenge his friend. 'Let me die forthwith,' he replies, 'and be avenged of my enemy, rather than abide here by the beaked ships, a laughing-stock and a burden of the earth.' Had Achilles any thought of death and danger? For wherever a man's place is, whether the place which he has chosen or that in which he has been placed by a commander, there he ought to remain in the hour of danger; he should not think of death or of anything but of disgrace. And this, O men of Athens, is a true saying.",
  duration: 10,
  speaker_id: Speaker.all.sample.id
})
Speech.create({
  title: "I Have a Dream",
  date: Faker::Date.backward,
  country: Faker::Address.country,
  city: Faker::Address.city,
  category: 'politics',
  content: "I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation.
Five score years ago, a great American, in whose symbolic shadow we stand today, signed the Emancipation Proclamation. This momentous decree came as a great beacon light of hope to millions of Negro slaves who had been seared in the flames of withering injustice. It came as a joyous daybreak to end the long night of their captivity.
But one hundred years later, the Negro still is not free. One hundred years later, the life of the Negro is still sadly crippled by the manacles of segregation and the chains of discrimination. One hundred years later, the Negro lives on a lonely island of poverty in the midst of a vast ocean of material prosperity. One hundred years later, the Negro is still languished in the corners of American society and finds himself an exile in his own land. And so we've come here today to dramatize a shameful condition.
In a sense we've come to our nation's capital to cash a check. When the architects of our republic wrote the magnificent words of the Constitution and the Declaration of Independence, they were signing a promissory note to which every American was to fall heir. This note was a promise that all men, yes, black men as well as white men, would be guaranteed the 'unalienable Rights' of 'Life, Liberty and the pursuit of Happiness.'' It is obvious today that America has defaulted on this promissory note, insofar as her citizens of color are concerned. Instead of honoring this sacred obligation, America has given the Negro people a bad check, a check which has come back marked 'insufficient funds.'
But we refuse to believe that the bank of justice is bankrupt. We refuse to believe that there are insufficient funds in the great vaults of opportunity of this nation. And so, we've come to cash this check, a check that will give us upon demand the riches of freedom and the security of justice.
We have also come to this hallowed spot to remind America of the fierce urgency of Now. This is no time to engage in the luxury of cooling off or to take the tranquilizing drug of gradualism. Now is the time to make real the promises of democracy. Now is the time to rise from the dark and desolate valley of segregation to the sunlit path of racial justice. Now is the time to lift our nation from the quicksands of racial injustice to the solid rock of brotherhood. Now is the time to make justice a reality for all of God's children.
It would be fatal for the nation to overlook the urgency of the moment. This sweltering summer of the Negro's legitimate discontent will not pass until there is an invigorating autumn of freedom and equality. Nineteen sixty-three is not an end, but a beginning. And those who hope that the Negro needed to blow off steam and will now be content will have a rude awakening if the nation returns to business as usual. And there will be neither rest nor tranquility in America until the Negro is granted his citizenship rights. The whirlwinds of revolt will continue to shake the foundations of our nation until the bright day of justice emerges.
But there is something that I must say to my people, who stand on the warm threshold which leads into the palace of justice: In the process of gaining our rightful place, we must not be guilty of wrongful deeds. Let us not seek to satisfy our thirst for freedom by drinking from the cup of bitterness and hatred. We must forever conduct our struggle on the high plane of dignity and discipline. We must not allow our creative protest to degenerate into physical violence. Again and again, we must rise to the majestic heights of meeting physical force with soul force.
The marvelous new militancy which has engulfed the Negro community must not lead us to a distrust of all white people, for many of our white brothers, as evidenced by their presence here today, have come to realize that their destiny is tied up with our destiny. And they have come to realize that their freedom is inextricably bound to our freedom.
We cannot walk alone.
And as we walk, we must make the pledge that we shall always march ahead.
We cannot turn back.
There are those who are asking the devotees of civil rights, 'When will you be satisfied?' We can never be satisfied as long as the Negro is the victim of the unspeakable horrors of police brutality. We can never be satisfied as long as our bodies, heavy with the fatigue of travel, cannot gain lodging in the motels of the highways and the hotels of the cities. **We cannot be satisfied as long as the negro's basic mobility is from a smaller ghetto to a larger one. We can never be satisfied as long as our children are stripped of their self-hood and robbed of their dignity by signs stating: 'For Whites Only.' We cannot be satisfied as long as a Negro in Mississippi cannot vote and a Negro in New York believes he has nothing for which to vote. No, no, we are not satisfied, and we will not be satisfied until justice rolls down like waters, and righteousness like a mighty stream.",
  duration: 10,
  speaker_id: Speaker.all.sample.id
})
Speech.create({
  title: 'Donald Trump says  he  is  seriously thinking  about a presidential  bid',
  date: Faker::Date.backward,
  country: Faker::Address.country,
  city: Faker::Address.city,
  category: 'history',
  content: "My  fellow  Americans,  This  is  a great day for me  personally. You’re  very  smart to
have  voted for me  because I’m going to  do  positive  things  for this  country,  starting
with  this  mall  I’m looking out over.
For starters, I don’t know  why this  is  called  a “mall.” Where I come  from, New York
City— which happens to  be  the greatest  city  in  the world,  and the reason  I say that  is
that  I built most  of  it, and I only  build quality,  so  I think I know  what  I’m talking
about— a  mall  doesn’t look  like  this. Where are the shops?  I see grass,  ponds— and
what’s  that, an  obelisk?  This  is  not Cairo.  I don’t know  how much  the government
paid  for the Washington  Monument— and I have  no  problem with  George
Washington, but he  wasn’t  a businessman— they overpaid. You’ve  got a 560-foottall  structure sitting on  some  of  the most  prime real  estate  in  the country,  incredible
views,  including of  my  new home. People  would pay a lot for a duplex  co-op in  a
building  like  that. I would charge  $ 1,500 to  $ 2,000 a square  foot, and I’d get it. No
wonder  this  government  is  trillions in  debt.
Everywhere  I look  I see wasted  opportunities,  and I’ve  only  been  president for five
minutes.  At  the end of  this  so-called mall  is  the Lincoln Memorial. Lincoln was an
okay  president,  but I would have  freed the slaves, too.  And I would have  given them
something more  useful  than  forty acres and a mule, incidentally. But if  you want  to
make  a statement about Lincoln,  you could do  much  better  than  this. White marble?
Columns?  This  is  not Greece. And that  statue, he  looks like  he’s  having  a difficult
bowel movement. This  is  no  way to  say thank you for saving  the Union.  And I know
about unions, believe me. Ask around. Don’t try offering  them  forty acres and a mule.
So  with  respect to  Lincoln,  I would make  a statement:  pink  marble, gold, mirrors,
maybe some  hanging gardens,  fountains   with  water coming  out the breasts.  People
love  that  stuff.  A restaurant  on  the roof  that  would serve first-rate  food, because
that’s  the only  kind  of  food  I’m interested  in. Mediocre  food  does  not interest  me.
You know  what  people  like? Jumbo shrimp. It’s  not rocket  science.
So  what  do  you think of  your  new first lady? I picked  Moronia— what’s your  name,
honey?  Melania,  right.  Great name. I just  picked  Melania here  from  a very  wide
selection of  possibilities— not  just  because the sex is  incredible  but because this
nation  wants and deserves  a trophy  first lady. When  everyone  sees  our first lady
standing  next  to  some  other first lady  of  another country,  the wife  of  a premier or
whatever, they’ll want  to  go  to  bed with  our first lady, not the other one.  So  the
American  people  no  longer  have  to  worry on  that  score.  And if  they  get tired of  her,
not a problem,  because chances are I’ll  be  tired of  her before  they  are.  And we’ll get
a new first lady. Trying  to  keep  North Korea from  getting the bomb, maybe that’s  a
problem.  Finding a new first lady? Trust me, not a problem.
Policy-wise?  I’m going to  be  very  hands-on. If  a situation comes up, like  inflation,  or
a union beef, or  Mike  Tyson beats up  another motorist, I’m going to  be  on  it. It’s
going to  be  fixed.  There was a skating rink  in  New York  City  in  Central Park. There
were  problems  with  it. Then  I got involved. Now people  can skate on  it. Again,  it’s
not rocket  science.
Foreign-policy-wise?  Same. I’m a businessman.  Other countries want  to  do  business
with  us, I’m all for it. Trade,  great.  I have  no  problems  with  people  trading with  us.
But it’s  going to  be  fair  trade,  by  which I mean  we  come  out on  top.  They  have  a
problem with  that, they  can sell  their TVs and cheese  and whatever  to  someone else.
Maybe North Korea.  It’s  just  not complicated.  Missiles? Very  simple— you aim one
at  us, I fire  a hundred at  you.  So  don’t go  there.  Turning a country into  a radioactive
parking lot does  not bother  me. I sleep fine. Ask Melanomia.  And finally on  the
foreign front,  I have  something to  say to  Fidel Castro. Adios,  pal.  This  time, we’re
going to  nationalize your  hotels  and casinos.
That  about covers  it. I have  to  go, because important senators  and     congressmen are
giving  me  a lavish  luncheon  in  the Rotunda behind  me  here. I understand  they’re
serving a lot of  jumbo shrimp. Basically they’re trying  to  impress me  so  I won’t
cancel  their highway projects  and ethanol subsidies.  I know  how they  do  things.
Now they’re going to  find  out how I do  things. By  the way,  I’ve  directed  the Treasury
to  issue a couple  billion extra in  hundred-dollar  chips.  Enjoy yourselves. This  is  the
dawn  of  a great,  great era.",
  duration: 10,
  speaker_id: Speaker.all.sample.id
})
Speech.create({
  title: 'Quit India',
  date: Faker::Date.backward,
  country: Faker::Address.country,
  city: Faker::Address.city,
  category: 'history',
  content: "Before you discuss the resolution, let me place before you one or two things, I want you to understand two things very clearly and to consider them from the same point of view from which I am placing them before you. I ask you to consider it from my point of view, because if you approve of it, you will be enjoined to carry out all I say. It will be a great responsibility. There are people who ask me whether I am the same man that I was in 1920, or whether there has been any change in me. You are right in asking that question.
Let me, however, hasten to assure that I am the same Gandhi as I was in 1920. I have not changed in any fundamental respect. I attach the same importance to non-violence that I did then. If at all, my emphasis on it has grown stronger. There is no real contradiction between the present resolution and my previous writings and utterances.
Occasions like the present do not occur in everybody’s and but rarely in anybody’s life. I want you to know and feel that there is nothing but purest Ahimsa in all that I am saying and doing today. The draft resolution of the Working Committee is based on Ahimsa, the contemplated struggle similarly has its roots in Ahimsa. If, therefore, there is any among you who has lost faith in Ahimsa or is wearied of it, let him not vote for this resolution. Let me explain my position clearly. God has vouchsafed to me a priceless gift in the weapon of Ahimsa. I and my Ahimsa are on our trail today. If in the present crisis, when the earth is being scorched by the flames of Himsa and crying for deliverance, I failed to make use of the God given talent, God will not forgive me and I shall be judged unworthy of the great gift. I must act now. I may not hesitate and merely look on, when Russia and China are threatened.
Ours is not a drive for power, but purely a non-violent fight for India’s independence. In a violent struggle, a successful general has been often known to effect a military coup and to set up a dictatorship. But under the Congress scheme of things, essentially non-violent as it is, there can be no room for dictatorship. A non-violent soldier of freedom will covet nothing for himself, he fights only for the freedom of his country. The Congress is unconcerned as to who will rule, when freedom is attained. The power, when it comes, will belong to the people of India, and it will be for them to decide to whom it placed in the entrusted. May be that the reins will be placed in the hands of the Parsis, for instance-as I would love to see happen-or they may be handed to some others whose names are not heard in the Congress today. It will not be for you then to object saying, “This community is microscopic. That party did not play its due part in the freedom’s struggle; why should it have all the power?” Ever since its inception the Congress has kept itself meticulously free of the communal taint. It has thought always in terms of the whole nation and has acted accordingly. . . I know how imperfect our Ahimsa is and how far away we are still from the ideal, but in Ahimsa there is no final failure or defeat. I have faith, therefore, that if, in spite of our shortcomings, the big thing does happen, it will be because God wanted to help us by crowning with success our silent, unremitting Sadhana for the last twenty-two years.
I believe that in the history of the world, there has not been a more genuinely democratic struggle for freedom than ours. I read Carlyle’s French Revolution while I was in prison, and Pandit Jawaharlal has told me something about the Russian revolution. But it is my conviction that inasmuch as these struggles were fought with the weapon of violence they failed to realize the democratic ideal. In the democracy which I have envisaged, a democracy established by non-violence, there will be equal freedom for all. Everybody will be his own master. It is to join a struggle for such democracy that I invite you today. Once you realize this you will forget the differences between the Hindus and Muslims, and think of yourselves as Indians only, engaged in the common struggle for independence.
Then, there is the question of your attitude towards the British. I have noticed that there is hatred towards the British among the people. The people say they are disgusted with their behaviour. The people make no distinction between British imperialism and the British people. To them, the two are one. This hatred would even make them welcome the Japanese. It is most dangerous. It means that they will exchange one slavery for another. We must get rid of this feeling. Our quarrel is not with the British people, we fight their imperialism. The proposal for the withdrawal of British power did not come out of anger. It came to enable India to play its due part at the present critical juncture It is not a happy position for a big country like India to be merely helping with money and material obtained willy-nilly from her while the United Nations are conducting the war. We cannot evoke the true spirit of sacrifice and valour, so long as we are not free. I know the British Government will not be able to withhold freedom from us, when we have made enough self-sacrifice. We must, therefore, purge ourselves of hatred. Speaking for myself, I can say that I have never felt any hatred. As a matter of fact, I feel myself to be a greater friend of the British now than ever before. One reason is that they are today in distress. My very friendship, therefore, demands that I should try to save them from their mistakes. As I view the situation, they are on the brink of an abyss. It, therefore, becomes my duty to warn them of their danger even though it may, for the time being, anger them to the point of cutting off the friendly hand that is stretched out to help them. People may laugh, nevertheless that is my claim. At a time when I may have to launch the biggest struggle of my life, I may not harbor hatred against anybody.",
  duration: 10,
  speaker_id: Speaker.all.sample.id
})
Speech.create({
  title: "Prime Minister Benjamin Netanyahu's 2018 UN General Assembly Speech",
  date: Faker::Date.backward,
  country: Faker::Address.country,
  city: Faker::Address.city,
  category: 'history',
  content: "“Distinguished delegates, ladies and gentlemen, When I spoke here three years ago Israel stood alone among the nations. Of the nearly 200 countries that sit in this hall, only Israel openly opposed the nuclear deal with Iran. We oppose it because it threatens our future, even our very survival. We opposed it because the deal paved Iran’s path to a nuclear arsenal. And by lifting the sanctions, it fueled Iran’s campaign of carnage and conquest throughout the Middle East. We oppose it because the deal was based on a fundamental lie that Iran is not seeking to develop nuclear weapons. Now, Israel exposed that lie earlier this year. Last February, Israel conducted a daring raid on Iran’s secret atomic archive. We obtained over 100,000 documents and videos that had been stashed in vaults in an innocent-looking building in the heart of Tehran. In May, I presented a short summary of what we obtained to the international media. I provided hard evidence of Iran’s plans to build nuclear weapons and its plans to deceive the international community. Israel shared this information and more damning evidence that we found with members of the P5+1 and with the international atomic energy agency. Months have passed, the IAA has still not taken any actions. It has not posed a single question to Iran. It has not demanded to inspect a single new site discovered in that secret archive. So given this inaction, I decided to reveal today something else that we have shared with the IAA and with a few intelligence agencies. What I’m about to say has not been shared publicly before. Today I’m disclosing for the first time that Iran has another secret facility in Tehran. A secret atomic warehousec for storing massive amounts of equipment and material for Iran’s secret nuclear weapons program. In May we exposed the site of Iran’s secret atomic archive. It’s right here in the Shuabad Distrcit of Tehran. Today I’m revealing the site of a second facility: Iran’s secret atomic warehouse. It’s right here, in the Turkuzahbad Distrcit of Tehran. Just three miles away. Let me show you exactly what the secret atomic warehouse looks like. Here it is. You see, like the atomic archive it’s another innocent-looking compound. Now for those of you at home using Google Earth, this no longer secret atomic warehouse. You have the coordinates, you can try to get there. And for those of you who try to get there: It’s 100 meters from the rug-cleaning operation. By the way, i hear they do a fantastic job of cleaning rugs there. But by now they may be radioactive rags. This is the second secret site. Now countries with satellite capabilities may notice some increased activity on the alley in the days and weeks ahead.
The people they see scurrying back and forth are Iranian officials desperately trying to finish the job of cleaning up that site. Because you see-- since we raided the atomic archive they’ve been busy cleaning up the atomic warehouse. Just last month they removed 15 kilograms of radioactive material. You know what they did with it? Those 15 kilograms of radioactive material, they had to get it out of this site so they took it out and they spread it around Tehran in an effort to hide the evidence. The endangered residents of Tehran may want to know that they can a geiger counter on Amazon for only 29.99$. As of today, that’s just four million Iranian reals.
But we’ll get to that later, I’ll talk about the Iranian economy in a minute. They took this radioactive material and spread it around Tehran. Now the Iranian officials cleaning out that site still have a lot of work to do because they’ve had at least 15 ship containers, they’re gigantic, 15 ship containers full of nuclear-related equipment and material stored there. Now since each of those containers can hold 20 tons of material this means that this site contained as much as 300 tons of nuclear-related equipment and material. Right here. So, distinguished delegates, you have to ask yourself a question. Why did Iran keep a secret atomic archive and a secret atomic warehouse? Because after all, when South Africa and Libya, when they gave up their nuclear programs the first thing they did was to destroy both the archives and the material and equipment. And the answer to the question is simple: The reason Iran didn’t destroy its atomic archive and its atomic warehouse is because it hasn’t abandoned its goal to develop nuclear weapons. In fact, it planned to use both of these sites in a few years when the time would be right to break out to the atom bomb. But ladies and gentlemen, rest assured, that won’t happen. It won’t happen because what Iran hides Israel will find.
Ladies and gentlemen, I have a message to the head of the IAA, Mr. Yukiya Amano. I believe he’s a good man.  I believe he wants to do the right thing. Well Mr. Amano, do the right thing. Go inspect this atomic warehouse. Immediately. Before the Iranians finish clearing it out. Distinguished delegates, do you remember when we were promised that inspections could take place anytime, anywhere? Remember that? Anytime, anywhere. Well, how about inspections right here, right now? And Mr. Amano-- while you’re at it, inspect the other sites we told you about. Once and for all, tell the world the truth about Iran.
Now I also have a message today for the tyrants of Tehran. Israel knows what you’re doing and Israel where you’re doing it. Israel will never let a regime that calls for our destruction to develop nuclear weapons. Not now, not in ten years, not ever. And Israel will do whatever it must do to defend itself against Iran’s aggression. We will continue to act against you in Syria. We will act against you in Lebanon. We will act against you in Iraq. We will act against you whenever, and wherever. We must act to defend our state and to defend our people. Distinguished delegates, three years ago, a few weeks after the nuclear deal was completed i asked this question from this very podium: Does anyone seriously believe that flooding Iran’s radical theocracy with weapons and cash will curb its appetite for aggression?
But many of the deal’s supporters believed just that. They believed that Iran’s regime will become more moderate, more peaceful. They believed that Iran would use the billions of dollars it received in sanctions relief to improve the lives of its people. To solve the water problem. To solve the trucking problem. To solve the electricty problem. Hosppitals, schools. That’s what they believed. Perhaps some of you also believed in that. Well, that didn’t happen. Instead, Iran used the money to fuel its vast war machine. Just this past year Iran has attacked Kurds in Iraq, slaughtered Sunnis in Syria, armed Hezbollah in Lebanon, financed Hamas in Gaza, fired missiles into Saudi Arabia and threatened freedom of navigation in the straits of Hurmuz and the Strait of Bab al-Mad.
Some peace. Some moderation. Now if you think, if you think that Iran’s aggression has been confined to the Middle East think again. Last month two Iranian agents were arrested for plotting terror attacks right here, in the United States. And several weeks ago, Iranian agents were arrested for plotting terror attacks in the heart of Europe. Yet while the US is confronting Iran with new sanctions Europe and others are appeasing Iran by trying to help it bypass those new sanctions. Now I’ve just used a word. A tough word. A very strong word. Appeasement. And I use it reluctanctly. But unfortunately that’s exactly what we’re seeing again. In Europe. Think about this. The same week Iran was caught red-handed trying to murder European citizens, European leaders were rolling out the red carpet for President Rohani, promising to give Iran even more money. I’m a historian’s son, I have to ask: I ask it not merely as a historian’s son, as a jew, as a citizen of the world, as someone who has lived through the 20th century- have these European leaders learned nothing from history? Will they ever wake up? Well we in Israel-- we don’t need a wakeup call because Iran threatens us every day. Because despite the best of hopes and there were many hopes around the nuclear deal this deal did not push war further away. It brought war ever closer to our borders. In Syria, Iran has tried to establish permanent military bases against us and has already launched missiles and drones into our territory. In Gaza Iran is arming terror groups to launch rocket attacks into our cities and terror attacks against our civilians. In Lebanon, Iran is directing Hezbollah to build secret sites to convert inaccurate projectiles into precision-guided missiles. Missiles that can target deep inside Israel within an accuracy of ten meters. Hezbollah, listen to this, Hezbollah is deliberately using the innocent people of Beirut as human shields. They’ve placed three of these missile conversion sites along Beirut’s international airport. Here’s a picture that’s worth a thousand missiles. Here’s Beirut’s international airport. Here’s the first missile site. It’s in the Uzai neighborhood, on the water;s edge, a few blocks away from the runway. Here’s the second site. It’s underneath a soccer stadium,  two blocks away. And here’s the third site. It’s adjacent to the airport itself, right next to it. So I have a message for Hezbollah today: Israel knows, Israel also knows what you’re doing. Israel knows where you’re doing it. And Israel will not let you get away with it. Ladies and gentlemen, the nuclear deal supporters were wrong about what would happen when sanctions would be removed. They were wrong, dead wrong about what would happen when sanctions would be restored. They argued that US sanctions alone will have little economic impact on Iran. That’s what they said. Really? Well let’s see what happened to Iran’s economy now that President Trump has forced companies to choose between doing business with Iran and doing business with the US, whose GDP is fifty times the size of Iran’s GDP. A year ago Iran’s economy was booming. Now it’s collapsing. Iran’s currency is plummenting. Inflation and unemployment are soaring. British airlines, German banks, French oil companies, Japanese oil importers and many others are scrambling to get out. If that’s little economic impact, imagine what will happen with the next batch of US sanctions imposed in November.
The deal’s supporters were also wrong when they argued that restoring sanctions would rally the Iranian people around the regime. Well, they’re definitely rallying but not around the regime-- they’re rallying against the regime. They’re not chanting ‘Death to America.’ They’re chanting ‘Death to the Dictator.’ They’re not chanting ‘Export the Islamic Revolution,’ they’re chanting ‘Leave Syria,’ ‘Leave Lebanon,’ ‘Leave Gaza,’ ‘Take Care of Us, in Iran.’
I listened to these protests. I talked to the Iranian people. I share these videos. And I get so many responses. From Iranians. At first I thought these are Iranian exiles in the safety of London or Paris or Los Angeles. No. Iranians from Iran, embracing Israel, criticizing the regime--- that’s an understatement--- with their names. And I ask my intelligence people: What’s going on? And shortly after the protests broke out, not because of what I said but it was an indicator of something extraordinary that was taking place there because in these protests the Iranian people are showing unbelievable courage. From the urban centers to the outlying villages, and it’s embracing now the whole of Iran. From the striking Bazaar merchants to the young women uncovering their hair: the people of Iran are bravely standing up to a regime that has brutally repressed them for four decades and that has squandered their money, still squanders their money, in bloody wars across the Middle East.
So here’s what I say to Europe’s leaders and to others: Instead of cuddling Iran’s dictators, join the U.S. and Israel and most of the Arab world in supporting new sanctions against a regime that endangers all of us in all of the world.
Israel is deeply grateful to President Trump for his bold decision to withdraw from the disasterous nuclear deal with Iran. Many, many of our Arab neighbors are also grateful. And everyone who cares about the peace and security of the world should also be grateful. But ladies and gentlemen, I have an important confession to make: This may surprise you but I have to admit that the Iran deal has had one positive consequence, an unintended one but a positive consequence-- by empowering Iran, it brought Israel and many Arab states closer together than ever before in an intimacy and friendship that I have not seen in my lifetime and would have been unimagineable a few years ago.
And you know, when you form friendships around a threat, around a challenge, you quickly see opportunities. Not only for security but how to bring a better life for our people, which Israel can help and wants to help do. Israel deeply values these new friendships and I hope the day will soon arrive when Israel will be able to expand peace, a formal peace, beyond Egypt and Jordan to other Arab neighbors, including the Palestinians. I look forward to working with President Trump and his peace team to achieve that goal. I also want to use this opportunity, we’re here at the UN, a place I know because I served here as ambassador many years ago for many years, so I know something about the UN. So I want to use this opportunity to express Israel’s appreciation to President Trump and Ambassador Haley for the unwavering support they’ve provided Israel at the UN.  They have unequivocally backed Israel’s right to defend itself.
They rightly pulled out of a history-denying UNESCO and a morally bankrupt UN Human Rights Council. They have more resolutions about Israel than the rest of the world combined, I think. And tenfold compared to, I don’t know, Iran, Syria, you name it. Not even tenfold, because you can’t multiply zero by any number.
They stopped funding, President Trump and Ambassador Haley, they stopped funding an unreformed UNRWA, an organization that instead of solving the Palestinian refugee problem, perpetuates it.
Day after day, the Trump administration has stood up to what has long been a specialty here at the UN—slandering Israel. Even though the shameful resolution comparing Zionism to racism was repealed 25 years ago, I’m sorry to say that its foul stench still clings to these halls.
Israel airlifted Ethiopian Jews to freedom and a new life in Israel, in the Jewish state. Yet here at the UN, here at the UN, Israel is absurdly accused of racism.
Israel’s Arab citizens vote in our elections, serve in our parliament, preside over our courts, and have exactly the same individual rights as all other Israeli citizens. Yet here at the UN, Israel is shamefully accused of apartheid.
Today, there are at least five times as many Palestinians as there were in 1948, the year of Israel’s founding. Yet here at the UN, Israel is outrageously accused of ethnic cleansing.
Ladies and Gentlemen, you know what this is?
It’s the same old antisemitism with a brand new face. That’s all it is.
Once, it was the Jewish people that were slandered and held to a different standard.
Today, it’s the Jewish state that is slandered and held to a different standard.
Here’s an example: Take the outlandish attacks that have been leveled against Israel after our Knesset, our parliament, recently adopted a law declaring Israel the nation state of the Jewish people.
Mind you, Israel is a free country. You can oppose a law, and people did. You can call for different wording in this or that clause, or you can call to add or subtract a clause. You can do that.
But when Israel is called racist, Israel is called racist for making Hebrew its official language and the Star of David its national flag, when Israel is labeled an apartheid state for declaring itself the nation state of the Jewish people, this is downright preposterous. And you know why?
Because represented in this hall today are more than 100 countries that have only one official language, even though many other languages are commonly spoken within those countries. There are more than 50 countries here that have crosses or crescents on their flags, even though they have many non-Muslims and non-Christians, many of them, living in their midst. And there are dozens of countries that define themselves as nation states of a particular people, even though there are many ethnic and national minorities within their borders.
None of those countries are denigrated or libeled for celebrating their unique national identity. Only Israel is denigrated. Only Israel is libeled.
What is unique about the Jewish people is not that we have a nation state. What is unique is that many still oppose us having a nation state.
Moments ago, President Abbas outrageously said that Israel’s Nation State Law proves that Israel is a racist, apartheid state.
President Abbas, you should know better. You wrote a dissertation denying the Holocaust. Your Palestinian Authority imposes death sentences on Palestinians for selling land to Jews. Did you hear that? If a Jew buys an apartment, a piece of land anywhere in the Palestinian territories, the Palestinian who sold him that land is executed. That’s what the law says.
President Abbas, you proudly pay Palestinian terrorists who murder Jews. In fact, the more they slay, the more you pay. That’s in their law too. And you condemn Israel’s morality? You call Israel racist?
This is not the way to peace.  This is not the way to achieve the peace we all want and need and to which Israel remain committed. This body should not be applauding the head of a regime that pays terrorists. The UN should condemn such a despicable policy.
And the UN, the UN which brokered a ceasefire in 2014, should demand that Hamas release our fallen soldiers Oron Shaul and Hadar Goldin, who was kidnapped when Hamas violated that very ceasefire.
Hamas should also release the two Israeli citizens it holds captive, Abera Mengistu and Hisham al Sayed.
Ladies and gentlemen,
Every time I stand here, I feel as I do today. I am privileged to stand here as the Prime Minister of the Jewish and democratic state of Israel.
Some believe that Israel cannot be both Jewish and democratic. This is false. Israel is both, and Israel will always remain both.
Ever since Abraham and Sarah made their journey to the promised land nearly 4,000 years ago, the Land of Israel has been our homeland. It’s the place where Isaac and Rebecca, Jacob, Leah and Rachel carried on their eternal covenant with God.”",
  duration: 10,
  speaker_id: Speaker.all.sample.id
})

#contributions with comments and votes
Speech.all.each do |speech|
  5.times do
    contribution = Contribution.create(
      start_position: speech.content[rand(1..speech.length/2)],
      end_position: speech.content[rand(start_position..speech.length)],
      speech_id: speech.id,
      user_id: User.all.sample.id,
      content: Faker::Lorem.paragraph
      )
    if contribution.persisted?
      rand(1..5).times do
        vote = Vote.create(
          value: 1,
          votable_type: 'contribution',
          votable_id: contribution.id
          )
      end
      3.times do
        comment = Comment.create(
          user_id: User.all.sample.id,
          contribution_id: contribution.id,
          content: Faker::Lorem.sentence
          )
        if comment.persisted
          rand(1..5).times do
            vote = Vote.create(
              value: 1,
              votable_type: 'comment',
              votable_id: comment.id
              )
          end
        end
      end
    end
  end
end

puts "~~~~~~~~~~~~~~~"
puts "#{User.count} users"
puts "#{Speaker.count} speakers"
puts "#{Category.count} users"
puts "#{Speech.count} speech"
puts "#{Contribution.count} contributions"
puts "#{Comment.count} comments"
puts "#{Vote.count} votes"
puts "~~~~~~~~~~~~~~~"




