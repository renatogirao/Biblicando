//
//  EasyDifficultViewController.swift
//  PerguntasERespostas
//
//  Created by Renato on 18/03/17.
//  Copyright © 2017 Renato. All rights reserved.
//

import UIKit
import Foundation

class EasyDifficultViewController: UIViewController {
    
    @IBOutlet weak var labelQuestionEasy: UILabel!
    @IBOutlet weak var buttonAnswer1Easy: UIButton!
    @IBOutlet weak var buttonAnswer2Easy: UIButton!
    @IBOutlet weak var buttonAnswer3Easy: UIButton!
    @IBOutlet weak var buttonAnswer4Easy: UIButton!
    @IBOutlet weak var labelFeedbackEasy: UILabel!
    @IBOutlet weak var buttonFeedbackEasy: UIButton!
    @IBOutlet weak var imageFeedbackEasy: UIImageView!
    @IBOutlet weak var labelFinalGradeEasy: UILabel!
    @IBOutlet weak var viewFeedbackEasy: UIView!
    @IBOutlet weak var buttonBackInicialViewEasy: UIButton!
    @IBOutlet weak var imageFeedbackJesusEasy: UIImageView!
        
        
        var questions : [Question]! //vetor que contém as questões do quiz
        var currentQuestion = 0     //indica a questão atual
        var grade = 0.0             //double para o cálculo da nota
        var quizEnded = false       //Bool que indica se o quiz terminou ou não
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            buttonAnswer1Easy.layer.cornerRadius = 20
            buttonAnswer2Easy.layer.cornerRadius = 20
            buttonAnswer3Easy.layer.cornerRadius = 20
            buttonAnswer4Easy.layer.cornerRadius = 20
            viewFeedbackEasy.layer.cornerRadius = 20
            
            
            //Questions
            let q0answer0 = Answer(answer: "Noé", isCorrect: true)
            let q0answer1 = Answer(answer: "Jesus", isCorrect: false)
            let q0answer2 = Answer(answer: "Moisés", isCorrect: false)
            let q0answer3 = Answer(answer: "José", isCorrect: false)
            let question0 = Question(question: "Quem, após Deus ordenar, construiu uma arca para se salvar de um dilúvio?", strImageFileName: "elefante.jpg", answers: [q0answer0, q0answer1, q0answer2, q0answer3])
            
            let q1answer0 = Answer(answer: "José", isCorrect: true)
            let q1answer1 = Answer(answer: "Josué", isCorrect: false)
            let q1answer2 = Answer(answer: "Jacó", isCorrect: false)
            let q1answer3 = Answer(answer: "Esaú", isCorrect: false)
            let question1 = Question(question: "Quem foi vendido por seus irmãos para ser servo no Egito, porém após certo tempo, tornou-se rei?", strImageFileName: "girafa.jpg", answers: [q1answer0, q1answer1, q1answer2, q1answer3])
            
            let q2answer0 = Answer(answer: "Daniel", isCorrect: true)
            let q2answer1 = Answer(answer: "Sadraque", isCorrect: false)
            let q2answer2 = Answer(answer: "Nabucodonosor", isCorrect: false)
            let q2answer3 = Answer(answer: "Abede-Nego", isCorrect: false)
            let question2 = Question(question: "Quem foi jogado em uma cova de leões?", strImageFileName: "rinoceronte.jpg", answers: [q2answer0, q2answer1, q2answer2, q2answer3])
            
            let q3answer0 = Answer(answer: "Faltará", isCorrect: true)
            let q3answer1 = Answer(answer: "Aflingirá", isCorrect: false)
            let q3answer2 = Answer(answer: "Prejudicará", isCorrect: false)
            let q3answer3 = Answer(answer: "Machucará", isCorrect: false)
            let question3 = Question(question: "Complete: O Senhor é meu pastor e nada me _______?", strImageFileName: "", answers: [q3answer0, q3answer1, q3answer2, q3answer3])
            
            let q4answer0 = Answer(answer: "RESP FACIL1", isCorrect: true)
            let q4answer1 = Answer(answer: "RESP FACIL2", isCorrect: false)
            let q4answer2 = Answer(answer: "RESP FACIL3", isCorrect: false)
            let q4answer3 = Answer(answer: "RESP FACIL4", isCorrect: false)
            let question4 = Question(question: "PERGUNTA 4 MODO FÁCIL", strImageFileName: "", answers: [q4answer0, q4answer1, q4answer2, q4answer3])
            
            let q5answer0 = Answer(answer: "Elias", isCorrect: true)
            let q5answer1 = Answer(answer: "Eliseu", isCorrect: false)
            let q5answer2 = Answer(answer: "Samuel", isCorrect: false)
            let q5answer3 = Answer(answer: "Paulo", isCorrect: false)
            let question5 = Question(question: "Quem subiu aos céus em carruagens de fogo?", strImageFileName: "", answers: [q5answer0, q5answer1, q5answer2, q5answer3])
            
            let q6answer0 = Answer(answer: "Samuel", isCorrect: true)
            let q6answer1 = Answer(answer: "Ismael", isCorrect: false)
            let q6answer2 = Answer(answer: "Jacó", isCorrect: false)
            let q6answer3 = Answer(answer: "Moisés", isCorrect: false)
            let question6 = Question(question: "Quem era pai de Davi?", strImageFileName: "", answers: [q6answer0, q6answer1, q6answer2, q6answer3])
            
            let q7answer0 = Answer(answer: "Sansão", isCorrect: true)
            let q7answer1 = Answer(answer: "Moisés", isCorrect: false)
            let q7answer2 = Answer(answer: "Josué", isCorrect: false)
            let q7answer3 = Answer(answer: "Jesus", isCorrect: false)
            let question7 = Question(question: "Quem possuia as forças em seus longos cabelos?", strImageFileName: "", answers: [q7answer0, q7answer1, q7answer2, q7answer3])
            
            let q8answer0 = Answer(answer: "Davi", isCorrect: true)
            let q8answer1 = Answer(answer: "Jesus", isCorrect: false)
            let q8answer2 = Answer(answer: "Jeremias", isCorrect: false)
            let q8answer3 = Answer(answer: "Jonas", isCorrect: false)
            let question8 = Question(question: "Quem matou o gigante Golias?", strImageFileName: "", answers: [q8answer0, q8answer1, q8answer2, q8answer3])
            
            let q9answer0 = Answer(answer: "João Batista", isCorrect: true)
            let q9answer1 = Answer(answer: "Pedro", isCorrect: false)
            let q9answer2 = Answer(answer: "Lucas", isCorrect: false)
            let q9answer3 = Answer(answer: "Paulo", isCorrect: false)
            let question9 = Question(question: "Quem batizou Jesus?", strImageFileName: "zebra.jpeg", answers: [q9answer0, q9answer1, q9answer2, q9answer3])
            
            let q10answer0 = Answer(answer: "Mesaque", isCorrect: true)
            let q10answer1 = Answer(answer: "João", isCorrect: false)
            let q10answer2 = Answer(answer: "Pedro", isCorrect: false)
            let q10answer3 = Answer(answer: "Moisés", isCorrect: false)
            let question10 = Question(question: "Qual desses não era um discípulo de Jesus?", strImageFileName: "zebra.jpeg", answers: [q10answer0, q10answer1, q10answer2, q10answer3])
            
            let q11answer0 = Answer(answer: "12", isCorrect: true)
            let q11answer1 = Answer(answer: "10", isCorrect: false)
            let q11answer2 = Answer(answer: "11", isCorrect: false)
            let q11answer3 = Answer(answer: "15", isCorrect: false)
            let question11 = Question(question: "Quantas pragas Deus enviou no povo do Egito para que seu povo fosse liberto?", strImageFileName: "", answers: [q11answer0, q11answer1, q11answer2, q11answer3])
            
            let q12answer0 = Answer(answer: "Canaã", isCorrect: true)
            let q12answer1 = Answer(answer: "Egito", isCorrect: false)
            let q12answer2 = Answer(answer: "Jericó", isCorrect: false)
            let q12answer3 = Answer(answer: "Belém", isCorrect: false)
            let question12 = Question(question: "Qual o nome da terra prometida?", strImageFileName: "", answers: [q12answer0, q12answer1, q12answer2, q12answer3])
            
            let q13answer0 = Answer(answer: "Cobrador de impostos", isCorrect: true)
            let q13answer1 = Answer(answer: "Carpinteiro", isCorrect: false)
            let q13answer2 = Answer(answer: "Pescador", isCorrect: false)
            let q13answer3 = Answer(answer: "Médico", isCorrect: false)
            let question13 = Question(question: "Qual era a profissão de Paulo?", strImageFileName: "", answers: [q13answer0, q13answer1, q13answer2, q13answer3])
            
            let q14answer0 = Answer(answer: "Carmelo / Elias", isCorrect: true)
            let q14answer1 = Answer(answer: "Sinai / Moisés", isCorrect: false)
            let q14answer2 = Answer(answer: "das Oliveiras / Josué", isCorrect: false)
            let q14answer3 = Answer(answer: "Sião / Eliseu", isCorrect: false)
            let question14 = Question(question: "Complete: No monte ______, Deus enviou fogo do céu, após o profeta _____ orar e mostrar o verdadeiro Deus aos profetas de Baal,.", strImageFileName: "", answers: [q14answer0, q14answer1, q14answer2, q14answer3])
            
            let q15answer0 = Answer(answer: "Esaú", isCorrect: true)
            let q15answer1 = Answer(answer: "Moisés", isCorrect: false)
            let q15answer2 = Answer(answer: "José", isCorrect: false)
            let q15answer3 = Answer(answer: "Eliseu", isCorrect: false)
            let question15 = Question(question: "Quem era irmão de Jacó?", strImageFileName: "", answers: [q15answer0, q15answer1, q15answer2, q15answer3])

            questions = [question0, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15]
            
            startQuiz() //function that iniciate the quiz
        
            //Function to each button to choose the answers
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
            viewFeedbackEasy.isHidden = true
            
            if(quizEnded){
                
                startQuiz()
            }else{
                nextQuestion()
            }
        }
        
        
        //function to change to the next question
        func nextQuestion(){
            
            buttonAnswer1Easy.isEnabled = true
            buttonAnswer2Easy.isEnabled = true
            buttonAnswer3Easy.isEnabled = true
            buttonAnswer4Easy.isEnabled = true
            
            currentQuestion += 1
            
            //if(currentQuestion < questions.count){
            if(currentQuestion < 10){
                showQuestion(questionId: currentQuestion)
            }else{
                endQuiz()
            }
        }
        
        // function that end the quiz
        func endQuiz() {
            grade = grade * 10
            labelFinalGradeEasy.isHidden = false
            if (grade < 30) {
                labelFinalGradeEasy.text = "Misericórdia, sua nota foi \(grade)\n faltou na EBD, hein?"
            }
            else if (grade > 30 && grade < 50) {
                labelFinalGradeEasy.text = "Sua nota foi \(grade)\n Tá precisando ler mais a bíblia hein irmão"
            }
            else if (grade > 50 && grade < 60) {
                labelFinalGradeEasy.text = "Tá melhorando! Sua nota foi \(grade)\n mais um pouco e já pega seu certificado de crente"
            }
            
            else if (grade > 60 && grade < 70 ){
                labelFinalGradeEasy.text = "Parabéns! Sua nota foi \(grade)\n Já tem seu certificado de crente!"
            }
            else if (grade > 70 && grade < 90 ){
                labelFinalGradeEasy.text = "Aleluia! Sua nota foi \(grade)\n Boa garoto, tá indo a EBD, né?"
            }
            else if (grade > 90){
                labelFinalGradeEasy.text = "Parabéns! Sua nota foi \(grade)\n Agora sim Papai do céu tá orgulhoso!"
            }
            quizEnded = true
            viewFeedbackEasy.isHidden = false
            buttonFeedbackEasy.setTitle("Refazer", for: UIControlState.normal)
            imageFeedbackJesusEasy.isHidden = false
            labelFinalGradeEasy.isHidden = false
    
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
            labelFinalGradeEasy.isHidden = true
                
            showQuestion(questionId: 0)
        }
        
        func showQuestion(questionId : Int){
            
            //Refresh the label of the question and yours answers
            labelQuestionEasy.text = questions[questionId].strQuestion
            
            buttonAnswer1Easy.setTitle(questions[questionId].answers[0].strAnswer, for: UIControlState.normal)
            
            buttonAnswer2Easy.setTitle(questions[questionId].answers[1].strAnswer, for: UIControlState.normal)
            
            buttonAnswer3Easy.setTitle(questions[questionId].answers[2].strAnswer, for: UIControlState.normal)
            
            buttonAnswer4Easy.setTitle(questions[questionId].answers[3].strAnswer, for: UIControlState.normal)
            
        }
        //Function to choose the answer
        
        func selectAnswer(answerid : Int) {
            
            buttonAnswer1Easy.isEnabled = false
            buttonAnswer2Easy.isEnabled = false
            buttonAnswer3Easy.isEnabled = false
            buttonAnswer4Easy.isEnabled = false
            
            
            viewFeedbackEasy.isHidden = false
            
            
            
            var answer : Answer = questions[currentQuestion].answers[answerid]
            
            if(answer.isCorrect == true){
                grade = grade + 1.0
                
                labelFeedbackEasy.text = "Parabéns! Certa resposta!"
                imageFeedbackJesusEasy.image = UIImage(named: "JesusFeliz.png")
                imageFeedbackJesusEasy.isHidden = false
            }else{
                imageFeedbackJesusEasy.image = UIImage(named: "JesusTriste.png")
                imageFeedbackJesusEasy.isHidden = false
                labelFeedbackEasy.text = "Que pena, resposta errada!"
            }
            
            if (currentQuestion < 9){
                //If the question is not the last question, the button will show "Next question"
                buttonBackInicialViewEasy.isHidden = true
                buttonFeedbackEasy.setTitle("Próxima pergunta", for: UIControlState.normal)
                
                
            }else{
                //If the question is the last qustion, the button will show "See my grade"
                buttonBackInicialViewEasy.isHidden = false
                buttonFeedbackEasy.setTitle("Ver minha nota", for: UIControlState.normal)
                
            }
            
        }
        
        
        
}

