//
//  EasyDifficultViewController.swift
//  PerguntasERespostas
//
//  Created by Renato on 18/03/17.
//  Copyright © 2017 Renato. All rights reserved.
//

import UIKit
import Foundation

class HardDifficultViewController: UIViewController {
    
    @IBOutlet weak var labelQuestionHard: UILabel!
    @IBOutlet weak var buttonAnswer1Hard: UIButton!
    @IBOutlet weak var buttonAnswer2Hard: UIButton!
    @IBOutlet weak var buttonAnswer3Hard: UIButton!
    @IBOutlet weak var buttonAnswer4Hard: UIButton!
    @IBOutlet weak var viewFeedbackHard: UIView!
    @IBOutlet weak var labelFeedbackHard: UILabel!
    @IBOutlet weak var buttonFeedbackHard: UIButton!
    @IBOutlet weak var labelFinalGradeHard: UILabel!
    @IBOutlet weak var imageFeedbackJesusHard: UIImageView!
    @IBOutlet weak var buttonBackInicialViewHard: UIButton!

    
    
    var questions : [Question]! //vetor que contém as questões do quiz
    var currentQuestion = 0     //indica a questão atual
    var grade = 0.0             //double para o cálculo da nota
    var quizEnded = false       //Bool que indica se o quiz terminou ou não
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewFeedbackHard.layer.cornerRadius = 20
        buttonAnswer1Hard.layer.cornerRadius = 20
        buttonAnswer2Hard.layer.cornerRadius = 20
        buttonAnswer3Hard.layer.cornerRadius = 20
        buttonAnswer4Hard.layer.cornerRadius = 20
    
        //Questions
        let q0answer0 = Answer(answer: "Eliseba", isCorrect: true)
        let q0answer1 = Answer(answer: "Betseba", isCorrect: false)
        let q0answer2 = Answer(answer: "Mara", isCorrect: false)
        let q0answer3 = Answer(answer: "Maria", isCorrect: false)
        let question0 = Question(question: "Qual o nome da mulher de Arão?", strImageFileName: "", answers: [q0answer0, q0answer1, q0answer2, q0answer3])
        
        let q1answer0 = Answer(answer: "Salomão", isCorrect: true)
        let q1answer1 = Answer(answer: "Roboão", isCorrect: false)
        let q1answer2 = Answer(answer: "Adonias", isCorrect: false)
        let q1answer3 = Answer(answer: "Absalão", isCorrect: false)
        let question1 = Question(question: "Qual filho de Davi que reinou em seu lugar?", strImageFileName: "", answers: [q1answer0, q1answer1, q1answer2, q1answer3])
        
        let q2answer0 = Answer(answer: "Ló", isCorrect: true)
        let q2answer1 = Answer(answer: "Jó", isCorrect: false)
        let q2answer2 = Answer(answer: "Isaque", isCorrect: false)
        let q2answer3 = Answer(answer: "Eliezer", isCorrect: false)
        let question2 = Question(question: "Como se chamava o sobrinho de Abraão?", strImageFileName: "", answers: [q2answer0, q2answer1, q2answer2, q2answer3])
        
        let q3answer0 = Answer(answer: "Labão", isCorrect: true)
        let q3answer1 = Answer(answer: "Abimeleque", isCorrect: false)
        let q3answer2 = Answer(answer: "Damasceno", isCorrect: false)
        let q3answer3 = Answer(answer: "Balaão", isCorrect: false)
        let question3 = Question(question: "Qual o nome do sogro de Jacó?", strImageFileName: "", answers: [q3answer0, q3answer1, q3answer2, q3answer3])
        
        let q4answer0 = Answer(answer: "Sete", isCorrect: true)
        let q4answer1 = Answer(answer: "Nove", isCorrect: false)
        let q4answer2 = Answer(answer: "Caim", isCorrect: false)
        let q4answer3 = Answer(answer: "Abel", isCorrect: false)
        let question4 = Question(question: "Qual o nome do terceiro filho de Adão?", strImageFileName: "", answers: [q4answer0, q4answer1, q4answer2, q4answer3])
        
        let q5answer0 = Answer(answer: "Corintios", isCorrect: true)
        let q5answer1 = Answer(answer: "Romanos", isCorrect: false)
        let q5answer2 = Answer(answer: "Gálatas", isCorrect: false)
        let q5answer3 = Answer(answer: "Efésios", isCorrect: false)
        let question5 = Question(question: "Qual o nome do sétimo livro do novo testamento?", strImageFileName: "", answers: [q5answer0, q5answer1, q5answer2, q5answer3])
        
        let q6answer0 = Answer(answer: "20", isCorrect: true)
        let q6answer1 = Answer(answer: "30", isCorrect: false)
        let q6answer2 = Answer(answer: "25", isCorrect: false)
        let q6answer3 = Answer(answer: "15", isCorrect: false)
        let question6 = Question(question: "Por quantas moedas José foi vendido por seus irmãos?", strImageFileName: "", answers: [q6answer0, q6answer1, q6answer2, q6answer3])
        
        let q7answer0 = Answer(answer: "13 vezes", isCorrect: true)
        let q7answer1 = Answer(answer: "10 vezes", isCorrect: false)
        let q7answer2 = Answer(answer: "5 vezes", isCorrect: false)
        let q7answer3 = Answer(answer: "12 vezes", isCorrect: false)
        let question7 = Question(question: "Quantas vezes, ao todo, os israelitas rodearam Jericó?", strImageFileName: "", answers: [q7answer0, q7answer1, q7answer2, q7answer3])
        
        let q8answer0 = Answer(answer: "127", isCorrect: true)
        let q8answer1 = Answer(answer: "137", isCorrect: false)
        let q8answer2 = Answer(answer: "120", isCorrect: false)
        let q8answer3 = Answer(answer: "127", isCorrect: false)
        let question8 = Question(question: "Quantas eram as províncias do reino de Assuero?", strImageFileName: "", answers: [q8answer0, q8answer1, q8answer2, q8answer3])
        
        let q9answer0 = Answer(answer: "Amarelo", isCorrect: true)
        let q9answer1 = Answer(answer: "Preto", isCorrect: false)
        let q9answer2 = Answer(answer: "Marrom", isCorrect: false)
        let q9answer3 = Answer(answer: "Vermelho", isCorrect: false)
        let question9 = Question(question: "Qual a cor do quarto cavalo do Apocalipse?", strImageFileName: "", answers: [q9answer0, q9answer1, q9answer2, q9answer3])
        
        let q10answer0 = Answer(answer: "Natanael", isCorrect: true)
        let q10answer1 = Answer(answer: "Tomé", isCorrect: false)
        let q10answer2 = Answer(answer: "Felipe", isCorrect: false)
        let q10answer3 = Answer(answer: "Paulo", isCorrect: false)
        let question10 = Question(question: "Quem disse 'E pode vir alguma coisa boa de Nazaré?'", strImageFileName: "", answers: [q10answer0, q10answer1, q10answer2, q10answer3])
        
        let q11answer0 = Answer(answer: "Israel", isCorrect: true)
        let q11answer1 = Answer(answer: "Judá", isCorrect: false)
        let q11answer2 = Answer(answer: "Jerusalém", isCorrect: false)
        let q11answer3 = Answer(answer: "Egito", isCorrect: false)
        let question11 = Question(question: "Qual povo foi comparado a uma vaca rebelde??", strImageFileName: "", answers: [q11answer0, q11answer1, q11answer2, q11answer3])
        
        let q12answer0 = Answer(answer: "Hebraico, Latim e Grego", isCorrect: true)
        let q12answer1 = Answer(answer: "Latim, Grego e Aramaico", isCorrect: false)
        let q12answer2 = Answer(answer: "Hebraico e Grego", isCorrect: false)
        let q12answer3 = Answer(answer: "Grego, Hebraico e Aramaico", isCorrect: false)
        let question12 = Question(question: "Em quais idiomas foi escrito 'Jesus Nazaren, o Rei dos Judeus colocado em cima da cruz de Cristo?", strImageFileName: "", answers: [q12answer0, q12answer1, q12answer2, q12answer3])
        
        let q13answer0 = Answer(answer: "Salmo 119", isCorrect: true)
        let q13answer1 = Answer(answer: "Salmo 19", isCorrect: false)
        let q13answer2 = Answer(answer: "Salmo 23", isCorrect: false)
        let q13answer3 = Answer(answer: "Salmo 37", isCorrect: false)
        let question13 = Question(question: "Qual o maior capítulo da bíblia??", strImageFileName: "", answers: [q13answer0, q13answer1, q13answer2, q13answer3])
        
        let q14answer0 = Answer(answer: "Úlceras na pele", isCorrect: true)
        let q14answer1 = Answer(answer: "Gafanhotos", isCorrect: false)
        let q14answer2 = Answer(answer: "Trevas", isCorrect: false)
        let q14answer3 = Answer(answer: "Mon", isCorrect: false)
        let question14 = Question(question: "Qual foi a sexta praga lançada no Egito?", strImageFileName: "", answers: [q14answer0, q14answer1, q14answer2, q14answer3])
        
        let q15answer0 = Answer(answer: "Ester e Cantares", isCorrect: true)
        let q15answer1 = Answer(answer: "Jeremias e Cantares", isCorrect: false)
        let q15answer2 = Answer(answer: "Ester e Apocalipse", isCorrect: false)
        let q15answer3 = Answer(answer: "Juízes e Rute", isCorrect: false)
        let question15 = Question(question: "Em quais livros da Bíblia, não encontramos a palavra Deus?", strImageFileName: "", answers: [q15answer0, q15answer1, q15answer2, q15answer3])
        
        let q16answer0 = Answer(answer: "Elimeleque", isCorrect: true)
        let q16answer1 = Answer(answer: "Melquisedeque", isCorrect: false)
        let q16answer2 = Answer(answer: "Salamaleque", isCorrect: false)
        let q16answer3 = Answer(answer: "Maldizedeque", isCorrect: false)
        let question16 = Question(question: "Qual o nome do marido de Noemi??", strImageFileName: "", answers: [q16answer0, q16answer1, q16answer2, q16answer3])
        
        let q17answer0 = Answer(answer: "8", isCorrect: true)
        let q17answer1 = Answer(answer: "12", isCorrect: false)
        let q17answer2 = Answer(answer: "15", isCorrect: false)
        let q17answer3 = Answer(answer: "7", isCorrect: false)
        let question17 = Question(question: "Quantas pessoas entraram na arca, construída por Noé?", strImageFileName: "", answers: [q17answer0, q17answer1, q17answer2, q17answer3])
        
        let q18answer0 = Answer(answer: "Costureira", isCorrect: true)
        let q18answer1 = Answer(answer: "Vendedora", isCorrect: false)
        let q18answer2 = Answer(answer: "Cozinheira", isCorrect: false)
        let q18answer3 = Answer(answer: "Cobradora de Impostos", isCorrect: false)
        let question18 = Question(question: "Qual era a profissão de Dorcas?", strImageFileName: "", answers: [q18answer0, q18answer1, q18answer2, q18answer3])
        
        let q19answer0 = Answer(answer: "Elcana", isCorrect: true)
        let q19answer1 = Answer(answer: "Eliabete", isCorrect: false)
        let q19answer2 = Answer(answer: "Mathias", isCorrect: false)
        let q19answer3 = Answer(answer: "Simão", isCorrect: false)
        let question19 = Question(question: "Qual o nome do pai de Samuel?", strImageFileName: "", answers: [q19answer0, q19answer1, q19answer2, q19answer3])
        
        let q20answer0 = Answer(answer: "Frutos da Terra e melhores crias de seu rebanho", isCorrect: true)
        let q20answer1 = Answer(answer: "Melhores crias do rebanho e Frutos da terra", isCorrect: false)
        let q20answer2 = Answer(answer: "Frutos da terra e Peixes", isCorrect: false)
        let q20answer3 = Answer(answer: "Peixes e legumes", isCorrect: false)
        let question20 = Question(question: "Quais foram as ofertas de Caim e Abel, a Deus, respectivamente?", strImageFileName: "", answers: [q20answer0, q20answer1, q20answer2, q20answer3])
        
        let q21answer0 = Answer(answer: "Éfeso", isCorrect: true)
        let q21answer1 = Answer(answer: "Esmirna", isCorrect: false)
        let q21answer2 = Answer(answer: "Tiatira", isCorrect: false)
        let q21answer3 = Answer(answer: "Corintios", isCorrect: false)
        let question21 = Question(question: "Qual a igreja de Apocalipse que perdeu o 'primeiro amor'?", strImageFileName: "", answers: [q21answer0, q21answer1, q21answer2, q21answer3])
        
        let q22answer0 = Answer(answer: "Otniel", isCorrect: true)
        let q22answer1 = Answer(answer: "Samuel", isCorrect: false)
        let q22answer2 = Answer(answer: "Melzebeque", isCorrect: false)
        let q22answer3 = Answer(answer: "Baraque", isCorrect: false)
        let question22 = Question(question: "Quem foi o primeiro juíz?", strImageFileName: "", answers: [q22answer0, q22answer1, q22answer2, q22answer3])
        
        let q23answer0 = Answer(answer: "Sara", isCorrect: true)
        let q23answer1 = Answer(answer: "Noemi", isCorrect: false)
        let q23answer2 = Answer(answer: "Maria Madalena", isCorrect: false)
        let q23answer3 = Answer(answer: "Rute", isCorrect: false)
        let question23 = Question(question: "Quaa a única mulher, cuja idade é mencionada na Bíblia?", strImageFileName: "", answers: [q23answer0, q23answer1, q23answer2, q23answer3])
        
        let q24answer0 = Answer(answer: "15arrumar", isCorrect: true)
        let q24answer1 = Answer(answer: "1arrumar2", isCorrect: false)
        let q24answer2 = Answer(answer: "8", isCorrect: false)
        let q24answer3 = Answer(answer: "7", isCorrect: false)
        let question24 = Question(question: "Quanarrumaaarrrtas pessoas entraram na arca, construída por Noé?", strImageFileName: "", answers: [q24answer0, q24answer1, q24answer2, q24answer3])
        
        let q25answer0 = Answer(answer: "15arrumar", isCorrect: true)
        let q25answer1 = Answer(answer: "12arrumar", isCorrect: false)
        let q25answer2 = Answer(answer: "8", isCorrect: false)
        let q25answer3 = Answer(answer: "7", isCorrect: false)
        let question25 = Question(question: "Quantaaaaaaaaarrumararamahraramas pessoas entraram na arca, construída por Noé?", strImageFileName: "", answers: [q25answer0, q25answer1, q25answer2, q25answer3])
        
        let q26answer0 = Answer(answer: "Abraão, Isaque e Jacó", isCorrect: true)
        let q26answer1 = Answer(answer: "Noé, Moisés e Josué", isCorrect: false)
        let q26answer2 = Answer(answer: "Noé, Daniel e Abraão", isCorrect: false)
        let q26answer3 = Answer(answer: "Isaque, Jacó e Esaú", isCorrect: false)
        let question26 = Question(question: "Quem são os patriarcas?", strImageFileName: "", answers: [q26answer0, q26answer1, q26answer2, q26answer3])
        
        let q27answer0 = Answer(answer: "66", isCorrect: true)
        let q27answer1 = Answer(answer: "77", isCorrect: false)
        let q27answer2 = Answer(answer: "61", isCorrect: false)
        let q27answer3 = Answer(answer: "59", isCorrect: false)
        let question27 = Question(question: "Quantos livros tem a Bíblia?", strImageFileName: "", answers: [q27answer0, q27answer1, q27answer2, q27answer3])
        
        let q28answer0 = Answer(answer: "Gênesis, Êxodo, Levítico, Números e Deuteronômio", isCorrect: true)
        let q28answer1 = Answer(answer: "Salmos, Provérbios, Cantares, Naum e Habacuque", isCorrect: false)
        let q28answer2 = Answer(answer: "Gênesis, Êxodo, Números, Deuteronômio e Salmos", isCorrect: false)
        let q28answer3 = Answer(answer: "Mateus, Marcos, lucas, João e Atos", isCorrect: false)
        let question28 = Question(question: "Quais são os livros do Pentateuco?", strImageFileName: "", answers: [q28answer0, q28answer1, q28answer2, q28answer3])
        
        let q29answer0 = Answer(answer: "Saul, Davi e Salomão", isCorrect: true)
        let q29answer1 = Answer(answer: "Saul, Salomão e José", isCorrect: false)
        let q29answer2 = Answer(answer: "José, Ransés e Moisés", isCorrect: false)
        let q29answer3 = Answer(answer: "Saul, Salomão e Davi", isCorrect: false)
        let question29 = Question(question: "Quem foram os 3 primeiros reis de Israel em ordem?", strImageFileName: "", answers: [q29answer0, q29answer1, q29answer2, q29answer3])
        
        let q30answer0 = Answer(answer: "Samuel", isCorrect: true)
        let q30answer1 = Answer(answer: "Moisés", isCorrect: false)
        let q30answer2 = Answer(answer: "Davi", isCorrect: false)
        let q30answer3 = Answer(answer: "Salomão", isCorrect: false)
        let question30 = Question(question: "Qual foi o homem no velho testamento que teve 3 ministérios, como profeta, sacerdote e juiz?", strImageFileName: "", answers: [q30answer0, q30answer1, q30answer2, q30answer3])
        
        let q31answer0 = Answer(answer: "Neemias", isCorrect: true)
        let q31answer1 = Answer(answer: "Davi", isCorrect: false)
        let q31answer2 = Answer(answer: "Salomão", isCorrect: false)
        let q31answer3 = Answer(answer: "José", isCorrect: false)
        let question31 = Question(question: "Reconstruí os muros de Jerusalém em 52 dias, quem sou eu?", strImageFileName: "", answers: [q31answer0, q31answer1, q31answer2, q31answer3])
        
        let q32answer0 = Answer(answer: "Oséias", isCorrect: true)
        let q32answer1 = Answer(answer: "Miquéias", isCorrect: false)
        let q32answer2 = Answer(answer: "Samuel", isCorrect: false)
        let q32answer3 = Answer(answer: "Jeremias", isCorrect: false)
        let question32 = Question(question: "Que profeta casou com uma prostituta?", strImageFileName: "", answers: [q32answer0, q32answer1, q32answer2, q32answer3])
        
        let q33answer0 = Answer(answer: "Coopeiro do Rei", isCorrect: true)
        let q33answer1 = Answer(answer: "Guarda do Rei", isCorrect: false)
        let q33answer2 = Answer(answer: "Cuidava dos banquetes", isCorrect: false)
        let q33answer3 = Answer(answer: "Cozinheiro", isCorrect: false)
        let question33 = Question(question: "Qual a profissão de Neemias no Palácio?", strImageFileName: "", answers: [q33answer0, q33answer1, q33answer2, q33answer3])
        
        let q34answer0 = Answer(answer: "Que diremos pois esta coisas? Se Deus é por nós quem será contra nós?", isCorrect: true)
        let q34answer1 = Answer(answer: "Ide por todo o mundo, e pregai o evangelho a toda criatura", isCorrect: false)
        let q34answer2 = Answer(answer: "Eu, porém, olharei para o Senhor e esperarei no Deus da Minha Salvação", isCorrect: false)
        let q34answer3 = Answer(answer: "Não te mandei Eu? Esforça - te e tem bom ânimo", isCorrect: false)
        let question34 = Question(question: "O que está escrito em Romanos 8:31", strImageFileName: "", answers: [q34answer0, q34answer1, q34answer2, q34answer3])
        
        
        
        questions = [question0, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15, question16, question17, question18, question19 , question20, question21, question22, question23, question24, question25, question26, question27, question28, question29, question30, question31, question32, question33, question34]
        
        startQuiz() //function that iniciate the quiz
        
        //Functions
    }
    
    @IBAction func toAnswerButton1(_ sender: UIButton) {
        
        selectAnswer(answerid: 0)
    }
    
    @IBAction func toAnswerButton2(_ sender: UIButton) {
        selectAnswer(answerid: 1)
    }
    
    @IBAction func toAnswerButton3(_ sender: UIButton) {
        selectAnswer(answerid: 2)
    }
    
    @IBAction func toAnswerButton4(_ sender: UIButton) {
        selectAnswer(answerid: 3)
    }
    
    @IBAction func ButtonFeedback(_ sender: AnyObject) {
        viewFeedbackHard.isHidden = true
        
        
        if(quizEnded){
            
            startQuiz()
        }else{
            nextQuestion()
        }
    }
    
    
    //function to change to the next question
    func nextQuestion(){
        
        buttonAnswer1Hard.isEnabled = true
        buttonAnswer2Hard.isEnabled = true
        buttonAnswer3Hard.isEnabled = true
        buttonAnswer4Hard.isEnabled = true
        
        currentQuestion += 1
        
        if(currentQuestion < 10){
            showQuestion(questionId: currentQuestion)
        }else{
            endQuiz()
        }
    }
    
    // function that end the quiz
    
    func endQuiz() {

        grade = grade * 10
        
        if (grade < 20) {
            labelFinalGradeHard.text = "Misericórdia, sua nota foi \(grade)\n faltou na EBD, hein?"
        }
        if (grade > 20 && grade < 30) {
            labelFinalGradeHard.text = "Uhhmmm, sua nota foi \(grade)\n Tá precisando ler mais a bíblia, hein irmão"
        }
        if (grade > 30 && grade < 40) {
            labelFinalGradeHard.text = "eita, sua nota foi \(grade)\n Tá de recuperação na aula de religião"
        }
        if (grade > 40 && grade < 50) {
            labelFinalGradeHard.text = "Vish, sua nota foi \(grade)\n Você consegue ir um pouquinho melhor, vai..."
        }
        if (grade > 50 && grade < 60) {
            labelFinalGradeHard.text = "Tá melhorando! Sua nota foi \(grade)\n mais um pouco e já pega seu certificado de crente"
        }
        
        if (grade > 60 && grade < 70 ){
            labelFinalGradeHard.text = "Parabéns! Sua nota foi \(grade)\n Ganhou mais uma pedrinha no seu galardão..."
        }
        if (grade > 70 && grade < 80 ){
            labelFinalGradeHard.text = "Aleluia! Sua nota foi \(grade)\n Boa garoto, tá indo a EBD né?"
        }
        if (grade > 80 && grade < 90) {
            labelFinalGradeHard.text = "Uhhmmm, sua nota foi \(grade)\n Tá precisando ler mais a bíblia hein irmão"
        }
        else if (grade > 90)
        {
            labelFinalGradeHard.text = "Parabéns varão ou varoa! Sua nota foi \(grade)\n Agora sim Papai do céu tá orgulhoso!"
        }
        quizEnded = true
        viewFeedbackHard.isHidden = false
        buttonFeedbackHard.setTitle("Refazer", for: UIControlState.normal)
        imageFeedbackJesusHard.isHidden = false
        labelFinalGradeHard.isHidden = false
        
        
    }
    //Function that iniciate the quiz
    func startQuiz () {
        questions.shuffle() //function to shuffle the questions
        
        for i in 0 ..< questions.count {
            questions[i].answers.shuffle() //Shuffle the answers of the questions too
        }
        
        //reset the progress of the player
        quizEnded = false
        grade = 0.0
        currentQuestion = 0
        labelFinalGradeHard.isHidden = true
        
        showQuestion(questionId: 0)
       
    }
    
    func showQuestion(questionId : Int){
        
        
        //Refresh the label of the question and yours answers
        
        labelQuestionHard.text = questions[questionId].strQuestion
        
        buttonAnswer1Hard.setTitle(questions[questionId].answers[0].strAnswer, for: UIControlState.normal)
        
        buttonAnswer2Hard.setTitle(questions[questionId].answers[1].strAnswer, for: UIControlState.normal)
        
        buttonAnswer3Hard.setTitle(questions[questionId].answers[2].strAnswer, for: UIControlState.normal)
        
        buttonAnswer4Hard.setTitle(questions[questionId].answers[3].strAnswer, for: UIControlState.normal)
        
    }
    //Function to choose the answer
    
    func selectAnswer(answerid : Int) {
        
        buttonAnswer1Hard.isEnabled = false
        buttonAnswer2Hard.isEnabled = false
        buttonAnswer3Hard.isEnabled = false
        buttonAnswer4Hard.isEnabled = false
        
        viewFeedbackHard.isHidden = false
        
        
        var answer : Answer = questions[currentQuestion].answers[answerid]
        
        if(answer.isCorrect == true){
            grade = grade + 1
            
            labelFeedbackHard.text = "\nParabéns! Certa resposta!"
            imageFeedbackJesusHard.image = UIImage(named: "JesusFeliz.png")
            imageFeedbackJesusHard.isHidden = false
            
        }else{
        imageFeedbackJesusHard.image = UIImage(named:"JesusTriste.png")
            imageFeedbackJesusHard.isHidden = false
            labelFeedbackHard.text = "\n Que pena, resposta errada!"
            
        }
        
        if (currentQuestion < 9){
            //If the question is not the last question, the button will show "Next question"
            buttonBackInicialViewHard.isHidden = true
            buttonFeedbackHard.setTitle("Próxima pergunta", for: UIControlState.normal)
            
        }else{
            //If the question is the last qustion, the button will show "See my grade"
            buttonBackInicialViewHard.isHidden = false
            buttonFeedbackHard.setTitle("Ver minha nota", for: UIControlState.normal)
            
        }
    }
}

