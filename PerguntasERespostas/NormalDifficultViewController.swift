//
//  EasyDifficultViewController.swift
//  PerguntasERespostas
//
//  Created by Renato on 18/03/17.
//  Copyright © 2017 Renato. All rights reserved.
//

import UIKit
import Foundation

class NormalDifficultViewController: UIViewController {
    
    @IBOutlet weak var labelQuestionNormal: UILabel!
    @IBOutlet weak var imageQuestionNormal: UIImageView!
    @IBOutlet weak var buttonAnswer1Normal: UIButton!
    @IBOutlet weak var buttonAnswer2Normal: UIButton!
    @IBOutlet weak var buttonAnswer3Normal: UIButton!
    @IBOutlet weak var buttonAnswer4Normal: UIButton!
    @IBOutlet weak var viewFeedbackNormal: UIView!
    @IBOutlet weak var labelFeedbackNormal: UILabel!
    @IBOutlet weak var buttonFeedbackNormal: UIButton!
    @IBOutlet weak var labelFinalGradeNormal: UILabel!
    @IBOutlet weak var backInicialViewButton: UIButton!
    @IBOutlet weak var imageFeedbackJesusNormal: UIImageView!
    
    var questions : [Question]! //vetor que contém as questões do quiz
    var currentQuestion = 0     //indica a questão atual
    var grade = 0.0             //double para o cálculo da nota
    var quizEnded = false       //Bool que indica se o quiz terminou ou não
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewFeedbackNormal.layer.cornerRadius = 20
        buttonAnswer1Normal.layer.cornerRadius = 20
        buttonAnswer2Normal.layer.cornerRadius = 20
        buttonAnswer3Normal.layer.cornerRadius = 20
        buttonAnswer4Normal.layer.cornerRadius = 20
        
        //Questions
        let q0answer0 = Answer(answer: "Noé", isCorrect: true)
        let q0answer1 = Answer(answer: "Jesus", isCorrect: false)
        let q0answer2 = Answer(answer: "Moisés", isCorrect: false)
        let q0answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question0 = Question(question: "Quem, após Deus ordenar, construiu uma arca para se salvar de um dilúvio?", strImageFileName: "", answers: [q0answer0, q0answer1, q0answer2, q0answer3])
        
        let q1answer0 = Answer(answer: "33", isCorrect: true)
        let q1answer1 = Answer(answer: "36", isCorrect: false)
        let q1answer2 = Answer(answer: "23", isCorrect: false)
        let q1answer3 = Answer(answer: "26", isCorrect: false)
        let question1 = Question(question: "Com quantos anos Jesus foi crucificado?", strImageFileName: "", answers: [q1answer0, q1answer1, q1answer2, q1answer3])
        
        let q2answer0 = Answer(answer: "Daniel", isCorrect: true)
        let q2answer1 = Answer(answer: "Sadraque", isCorrect: false)
        let q2answer2 = Answer(answer: "Nabucodonosor", isCorrect: false)
        let q2answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question2 = Question(question: "Quem foi jogado em uma cova de leões?", strImageFileName: "", answers: [q2answer0, q2answer1, q2answer2, q2answer3])
        
        let q3answer0 = Answer(answer: "Faltará", isCorrect: true)
        let q3answer1 = Answer(answer: "Aflingirá", isCorrect: false)
        let q3answer2 = Answer(answer: "Prejudicará", isCorrect: false)
        let q3answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question3 = Question(question: "Complete: O Senhor é meu pastor e nada me _______?", strImageFileName: "", answers: [q3answer0, q3answer1, q3answer2, q3answer3])
        
        let q4answer0 = Answer(answer: "A vida eterna", isCorrect: true)
        let q4answer1 = Answer(answer: "O amor eterno", isCorrect: false)
        let q4answer2 = Answer(answer: "A alegria eterna", isCorrect: false)
        let q4answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question4 = Question(question: "Complete: Porque Deus amou o mundo de tal maneira, que deu seu filho, para que todo aquele que nele crê, não pereça, mas tenha _ _____ ______", strImageFileName: "", answers: [q4answer0, q4answer1, q4answer2, q4answer3])
        
        let q5answer0 = Answer(answer: "RESP NORMAL", isCorrect: true)
        let q5answer1 = Answer(answer: "RESP NORMAL", isCorrect: false)
        let q5answer2 = Answer(answer: "RESP NORMAL", isCorrect: false)
        let q5answer3 = Answer(answer: "RESP NORMAL", isCorrect: false)
        let question5 = Question(question: "PERGUNTA NORMAL?", strImageFileName: "", answers: [q5answer0, q5answer1, q5answer2, q5answer3])
        
        let q6answer0 = Answer(answer: "Samuel", isCorrect: true)
        let q6answer1 = Answer(answer: "Ismael", isCorrect: false)
        let q6answer2 = Answer(answer: "Jacó", isCorrect: false)
        let q6answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question6 = Question(question: "Quem era pai de Davi?", strImageFileName: "", answers: [q6answer0, q6answer1, q6answer2, q6answer3])
        
        let q7answer0 = Answer(answer: "Sansão", isCorrect: true)
        let q7answer1 = Answer(answer: "Moisés", isCorrect: false)
        let q7answer2 = Answer(answer: "Josué", isCorrect: false)
        let q7answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question7 = Question(question: "Quem possuia as forças em seus longos cabelos?", strImageFileName: "", answers: [q7answer0, q7answer1, q7answer2, q7answer3])
        
        let q8answer0 = Answer(answer: "Davi", isCorrect: true)
        let q8answer1 = Answer(answer: "Jesus", isCorrect: false)
        let q8answer2 = Answer(answer: "Jeremias", isCorrect: false)
        let q8answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question8 = Question(question: "Quem matou o gigante Golias?", strImageFileName: "", answers: [q8answer0, q8answer1, q8answer2, q8answer3])
        
        let q9answer0 = Answer(answer: "João Batista", isCorrect: true)
        let q9answer1 = Answer(answer: "Pedro", isCorrect: false)
        let q9answer2 = Answer(answer: "Lucas", isCorrect: false)
        let q9answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question9 = Question(question: "Quem batizou Jesus?", strImageFileName: "", answers: [q9answer0, q9answer1, q9answer2, q9answer3])
        
        let q10answer0 = Answer(answer: "Mesaque", isCorrect: true)
        let q10answer1 = Answer(answer: "João", isCorrect: false)
        let q10answer2 = Answer(answer: "Pedro", isCorrect: false)
        let q10answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question10 = Question(question: "Qual desses não era um discípulo de Jesus?", strImageFileName: "", answers: [q10answer0, q10answer1, q10answer2, q10answer3])
        
        let q11answer0 = Answer(answer: "12", isCorrect: true)
        let q11answer1 = Answer(answer: "10", isCorrect: false)
        let q11answer2 = Answer(answer: "11", isCorrect: false)
        let q11answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question11 = Question(question: "Quantas pragas Deus enviou no povo do Egito para que seu povo fosse liberto?", strImageFileName: "", answers: [q11answer0, q11answer1, q11answer2, q11answer3])
        
        let q12answer0 = Answer(answer: "Canaã", isCorrect: true)
        let q12answer1 = Answer(answer: "Egito", isCorrect: false)
        let q12answer2 = Answer(answer: "Natal", isCorrect: false)
        let q12answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question12 = Question(question: "Qual o nome da terra prometida?", strImageFileName: "", answers: [q12answer0, q12answer1, q12answer2, q12answer3])
        
        let q13answer0 = Answer(answer: "Cobrador de impostos", isCorrect: true)
        let q13answer1 = Answer(answer: "Carpinteiro", isCorrect: false)
        let q13answer2 = Answer(answer: "José", isCorrect: false)
        let q13answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question13 = Question(question: "Qual era a profissão de Paulo?", strImageFileName: "", answers: [q13answer0, q13answer1, q13answer2, q13answer3])
        
        let q14answer0 = Answer(answer: "Carmelo / Elias", isCorrect: true)
        let q14answer1 = Answer(answer: "Sinai / Moisés", isCorrect: false)
        let q14answer2 = Answer(answer: "Everest / Josué", isCorrect: false)
        let q14answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question14 = Question(question: "Complete: No monte ______, Deus enviou fogo do céu, após o profeta _____ orar e salvar a todos profetas de Baal.", strImageFileName: "", answers: [q14answer0, q14answer1, q14answer2, q14answer3])
        
        let q15answer0 = Answer(answer: "Esaú", isCorrect: true)
        let q15answer1 = Answer(answer: "Moisés", isCorrect: false)
        let q15answer2 = Answer(answer: "José", isCorrect: false)
        let q15answer3 = Answer(answer: "Moisés", isCorrect: false)
        let question15 = Question(question: "Quem era irmão de Jacó?", strImageFileName: "", answers: [q15answer0, q15answer1, q15answer2, q15answer3])
        
        questions = [question0, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15]
        
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
    
    @IBAction func answerButtonFeedback(_ sender: AnyObject) {
        viewFeedbackNormal.isHidden = true
        
        if(quizEnded){
            
            startQuiz()
        }else{
            nextQuestion()
        }
    }
    
    
    //function to change to the next question
    func nextQuestion(){
        
        buttonAnswer1Normal.isEnabled = true
        buttonAnswer2Normal.isEnabled = true
        buttonAnswer3Normal.isEnabled = true
        buttonAnswer4Normal.isEnabled = true
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
        
        if (grade < 30.0) {
            labelFinalGradeNormal.text = "Misericórdia, sua nota foi \(grade)\n faltou na EBD, hein?"
        }
        if (grade > 30.0 && grade < 50.0) {
            labelFinalGradeNormal.text = "Uhhmmm, sua nota foi \(grade)\n Tá precisando ler mais a bíblia hein irmão"
        }
        if (grade > 50.0 && grade < 60.0) {
            labelFinalGradeNormal.text = "Tá melhorando! Sua nota foi \(grade)\n mais um pouco e já pega seu certificado de crente"
        }
        
        if (grade > 60.0 && grade < 70.0 ){
            labelFinalGradeNormal.text = "Parabéns! Sua nota foi \(grade)\n Já tem seu certificado de crente!"
        }
        if (grade > 70.0 && grade < 90.0 ){
            labelFinalGradeNormal.text = "Aleluia! Sua nota foi \(grade)\n Boa garoto, tá indo a EBD, né?"
        }
        else if(grade > 90.0){
            labelFinalGradeNormal.text = "Parabéns! Sua nota foi \(grade)\n Agora sim Papai do céu tá orgulhoso!"
        }
        quizEnded = true
        viewFeedbackNormal.isHidden = false
        buttonFeedbackNormal.setTitle("Refazer", for: UIControlState.normal)
        imageFeedbackJesusNormal.isHidden = true
        labelFinalGradeNormal.isHidden = false
        
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
        labelFinalGradeNormal.isHidden = true
        
        showQuestion(questionId: 0)
    }
    
    func showQuestion(questionId : Int){
        
        //Refresh the label of the question and yours answers
        
      

        labelQuestionNormal.text = questions[questionId].strQuestion
                
        buttonAnswer1Normal.setTitle(questions[questionId].answers[0].strAnswer, for: UIControlState.normal)
        
        buttonAnswer2Normal.setTitle(questions[questionId].answers[1].strAnswer, for: UIControlState.normal)
        
        buttonAnswer3Normal.setTitle(questions[questionId].answers[2].strAnswer, for: UIControlState.normal)
        
        buttonAnswer4Normal.setTitle(questions[questionId].answers[3].strAnswer, for: UIControlState.normal)
        
        
    }
    //Function to choose the answer
    
    func selectAnswer(answerid : Int) {
        
        buttonAnswer1Normal.isEnabled = false
        buttonAnswer2Normal.isEnabled = false
        buttonAnswer3Normal.isEnabled = false
        buttonAnswer4Normal.isEnabled = false
        
        viewFeedbackNormal.isHidden = false
        
         
        
        var answer : Answer = questions[currentQuestion].answers[answerid]
        
        if(answer.isCorrect == true){
            grade = grade + 1.0
            
            labelFeedbackNormal.text = "\nParabéns! Certa resposta!"
            imageFeedbackJesusNormal.image = UIImage(named: "JesusFeliz.png")
            imageFeedbackJesusNormal.isHidden = false
        }else{
            imageFeedbackJesusNormal.image = UIImage(named:"JesusTriste.png")
            imageFeedbackJesusNormal.isHidden = false
            labelFeedbackNormal.text = "\n Que pena, resposta errada!"
        }
        
        //if (currentQuestion < questions.count-1){
        if (currentQuestion < 9){
        //If the question is not the last question, the button will show "Next question"
            backInicialViewButton.isHidden = true
            
            
            buttonFeedbackNormal.setTitle("Próxima pergunta", for: UIControlState.normal)
            
        }else{
            //If the question is the last qustion, the button will show "See my grade"
            backInicialViewButton.isHidden = false
            buttonFeedbackNormal.setTitle("Ver minha nota", for: UIControlState.normal)
            
        }
    }
}

