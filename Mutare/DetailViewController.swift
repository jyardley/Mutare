//
//  DetailViewController.swift
//  Mutare
//
//  Created by Jeff Yardley on 2/23/17.
//  Copyright © 2017-2020 Jeff Yardley. All rights reserved.
//  Updated to Swift 5.0 Syntax on 10-1-2020
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var whiteWinsImage: UIImageView!
    @IBOutlet weak var blackWinsImage: UIImageView!
    
    
    // MARK: Global Variables
    var buttonPressed: Int = 0
    
    var publicTouchCount: Int = 0
    var publicTouch: NSObject = 0 as NSObject
    var publicTapCount: NSObject = 0 as NSObject
    var publicLocation = CGPoint(x: 0, y: 0)
    let origin: CGPoint  = CGPoint(x: 0, y: 0)
    var blankTappedCenter = CGPoint(x: 0, y: 0)
    
    
    //These two buttons denote the actual buttons clicked and their properties...
    var pieceTouched: UIButton?
    var lastPieceTouched: UIButton?
    
    //These two "pieces" and color variable denote the team that the buttons are on,
    //since there's no room for the names on the buttons, only numbers...
    var pieceColor: String = "nothing"
    var currentPieceClicked = "nothing"
    var lastPieceClicked = "nothing"
    
    //This denotes whose move it is at the beginning of the game...
    var whoseTurn = "white"
    
    var numberBlackPieces = 13
    var numberWhitePieces = 13
    
    //Starting number for blank pieces to be generated during captures, since there are 78 blanks 
    //on the board...
    var blankPieceNumber = 79
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    
// MARK: Black Piece Buttons
    
    @IBOutlet weak var blackPieceOne: UIButton!
    
    @IBOutlet weak var blackPieceTwo: UIButton!
    
    @IBOutlet weak var blackPieceThree: UIButton!
    
    @IBOutlet weak var blackPieceFour: UIButton!
    
    @IBOutlet weak var blackPieceFive: UIButton!
    
    @IBOutlet weak var blackPieceSix: UIButton!
    
    @IBOutlet weak var blackPieceSeven: UIButton!
    
    @IBOutlet weak var blackPieceEight: UIButton!
    
    @IBOutlet weak var blackPieceNine: UIButton!
    
    @IBOutlet weak var blackPieceTen: UIButton!
    
    @IBOutlet weak var blackPieceEleven: UIButton!
    
    @IBOutlet weak var blackPieceTwelve: UIButton!
    
    @IBOutlet weak var blackPieceThirteen: UIButton!
  
    
    
  
// MARK: White Piece Buttons
    @IBOutlet weak var whitePieceOne: UIButton!
    
    @IBOutlet weak var whitePieceTwo: UIButton!
    
    @IBOutlet weak var whitePieceThree: UIButton!
    
    @IBOutlet weak var whitePieceFour: UIButton!
    
    @IBOutlet weak var whitePieceFive: UIButton!
    
    @IBOutlet weak var whitePieceSix: UIButton!
    
    @IBOutlet weak var whitePieceSeven: UIButton!
 
    @IBOutlet weak var whitePieceEight: UIButton!
    
    @IBOutlet weak var whitePieceNine: UIButton!
    
    @IBOutlet weak var whitePieceTen: UIButton!
    
    @IBOutlet weak var whitePieceEleven: UIButton!
    
    @IBOutlet weak var whitePieceTwelve: UIButton!
    
    @IBOutlet weak var whitePieceThirteen: UIButton!
    
    
    
    
    // MARK: "Blank Piece" Buttons
    //"Blank Piece" Buttons...
    @IBOutlet weak var blankPieceOne: UIButton!
    @IBOutlet weak var blankPieceTwo: UIButton!
    @IBOutlet weak var blankPieceThree: UIButton!
    @IBOutlet weak var blankPieceFour: UIButton!
    
    @IBOutlet weak var blankPieceFive: UIButton!
    
    @IBOutlet weak var blankPieceSix: UIButton!
    
    @IBOutlet weak var blankPieceSeven: UIButton!
    
    @IBOutlet weak var blankPieceEight: UIButton!
    
    @IBOutlet weak var blankPieceNine: UIButton!
    
    @IBOutlet weak var blankPieceTen: UIButton!
    
    @IBOutlet weak var blankPieceEleven: UIButton!
    
    @IBOutlet weak var blankPieceTwelve: UIButton!
    
    @IBOutlet weak var blankPieceThirteen: UIButton!
    
    @IBOutlet weak var blankPieceFourteen: UIButton!
    
    @IBOutlet weak var blankPieceFifteen: UIButton!
   
    @IBOutlet weak var blankPieceSixteen: UIButton!
    
    @IBOutlet weak var blankPieceSeventeen: UIButton!
    

    @IBOutlet weak var blankPieceEighteen: UIButton!
    
    @IBOutlet weak var blankPieceNineteen: UIButton!
    
    @IBOutlet weak var blankPieceTwenty: UIButton!
    
    @IBOutlet weak var blankPieceTwentyOne: UIButton!
    
    @IBOutlet weak var blankPieceTwentyTwo: UIButton!
    
    @IBOutlet weak var blankPieceTwentyThree: UIButton!
    
    @IBOutlet weak var blankPieceTwentyFour: UIButton!
    
    @IBOutlet weak var blankPieceTwentyFive: UIButton!
    
    @IBOutlet weak var blankPieceTwentySix: UIButton!
    
    @IBOutlet weak var blankPieceTwentySeven: UIButton!
    
    @IBOutlet weak var blankPieceTwentyEight: UIButton!
    
    @IBOutlet weak var blankPieceTwentyNine: UIButton!
    
    @IBOutlet weak var blankPieceThirty: UIButton!
    
    @IBOutlet weak var blankPieceThirtyOne: UIButton!
    
    @IBOutlet weak var blankPieceThirtyTwo: UIButton!
    
    @IBOutlet weak var blankPieceThirtyThree: UIButton!
    
    @IBOutlet weak var blankPieceThirtyFour: UIButton!
    
    @IBOutlet weak var blankPieceThirtyFive: UIButton!
    
    @IBOutlet weak var blankPieceThirtySix: UIButton!
    
    @IBOutlet weak var blankPieceThirtySeven: UIButton!
    
    @IBOutlet weak var blankPieceThirtyEight: UIButton!
    
    @IBOutlet weak var blankPieceThirtyNine: UIButton!
    
    @IBOutlet weak var blankPieceForty: UIButton!
    
    @IBOutlet weak var blankPieceFortyOne: UIButton!
    
    @IBOutlet weak var blankPieceFortyTwo: UIButton!
    
    @IBOutlet weak var blankPieceFortyThree: UIButton!
    
    @IBOutlet weak var blankPieceFortyFour: UIButton!
    
    @IBOutlet weak var blankPieceFortyFive: UIButton!
    
    @IBOutlet weak var blankPieceFortySix: UIButton!
    
    @IBOutlet weak var blankPieceFortySeven: UIButton!
    
    @IBOutlet weak var blankPieceFortyEight: UIButton!
    
    @IBOutlet weak var blankPieceFortyNine: UIButton!
    
    @IBOutlet weak var blankPieceFifty: UIButton!
    
    @IBOutlet weak var blankPieceFiftyOne: UIButton!
    
    @IBOutlet weak var blankPieceFiftyTwo: UIButton!
    
    @IBOutlet weak var blankPieceFiftyThree: UIButton!
    
    @IBOutlet weak var blankPieceFiftyFour: UIButton!
    
    @IBOutlet weak var blankPieceFiftyFive: UIButton!
    
    @IBOutlet weak var blankPieceFiftySix: UIButton!
    
    @IBOutlet weak var blankPieceFiftySeven: UIButton!
    
    @IBOutlet weak var blankPieceFiftyEight: UIButton!
    
    @IBOutlet weak var blankPieceFiftyNine: UIButton!
    
    @IBOutlet weak var blankPieceSixty: UIButton!
    
    @IBOutlet weak var blankPieceSixtyOne: UIButton!
    
    @IBOutlet weak var blankPieceSixtyTwo: UIButton!
    
    @IBOutlet weak var blankPieceSixtyThree: UIButton!
    
    @IBOutlet weak var blankPieceSixtyFour: UIButton!
    
    @IBOutlet weak var blankPieceSixtyFive: UIButton!
    
    @IBOutlet weak var blankPieceSixtySix: UIButton!
    
    @IBOutlet weak var blankPieceSixtySeven: UIButton!
    
    @IBOutlet weak var blankPieceSixtyEight: UIButton!
    
    @IBOutlet weak var blankPieceSixtyNine: UIButton!
    
    @IBOutlet weak var blankPieceSeventy: UIButton!
    
    @IBOutlet weak var blankPieceSeventyOne: UIButton!
    
    @IBOutlet weak var blankPieceSeventyTwo: UIButton!
    
    @IBOutlet weak var blankPieceSeventyThree: UIButton!
    
    @IBOutlet weak var blankPieceSeventyFour: UIButton!
    
    @IBOutlet weak var blankPieceSeventyFive: UIButton!
    
    @IBOutlet weak var blankPieceSeventySix: UIButton!
    
    @IBOutlet weak var blankPieceSeventySeven: UIButton!
    
    @IBOutlet weak var blankPieceSeventyEight: UIButton!
    
    
    
    
    
    
    
    
    
    
    
    // MARK: Black Piece Actions
    //Black Piece Actions...
    @IBAction func blackPieceOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceOne
        
        PieceAction(piece: blackPieceOne)
        
    }
    
    @IBAction func blackPieceTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceTwo
        
        PieceAction(piece: blackPieceTwo)
        
    }
    
    @IBAction func blackPieceThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceThree
        
        PieceAction(piece: blackPieceThree)
        
    }
    
    
    @IBAction func blackPieceFour(_ sender: Any) {
        
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceFour
        
        PieceAction(piece: blackPieceFour)
        
    }
    
    @IBAction func blackPieceFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceFive
        
        PieceAction(piece: blackPieceFive)
    }
    
    @IBAction func blackPieceSix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceSix
        
        PieceAction(piece: blackPieceSix)
    }
    
    @IBAction func blackPieceSeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceSeven
        
        PieceAction(piece: blackPieceSeven)
    }
    
    
    @IBAction func blackPieceEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceEight
        
        PieceAction(piece: blackPieceEight)
    }

    
    @IBAction func blackPieceNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceNine
        
        PieceAction(piece: blackPieceNine)
    }
    
    
    @IBAction func blackPieceTen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceTen
        
        PieceAction(piece: blackPieceTen)
    }
    
 
    @IBAction func blackPieceEleven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceEleven
        
        PieceAction(piece: blackPieceEleven)
    }
    
    
    @IBAction func blackPieceTwelve(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceTwelve
        
        PieceAction(piece: blackPieceTwelve)
    }
    
    @IBAction func blackPieceThirteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "black"
        //Set current piece...
        pieceTouched = blackPieceThirteen
        
        PieceAction(piece: blackPieceThirteen)
    }
    
    
    
    
    
    // MARK: White Piece Actions
    //White Piece Actions...
    @IBAction func whitePieceOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched

        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceOne
        PieceAction(piece: whitePieceOne)
        
    }
    
    @IBAction func whitePieceTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceTwo
        PieceAction(piece: whitePieceTwo)

    }

    @IBAction func whitePieceThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceThree
        PieceAction(piece: whitePieceThree)

    }
    
    @IBAction func whitePieceFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceFour
        PieceAction(piece: whitePieceFour)

    }
    
    @IBAction func whitePieceFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceFive
        PieceAction(piece: whitePieceFive)

    }
    
    @IBAction func whitePieceSix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceSix
        PieceAction(piece: whitePieceSix)

    }
    
    @IBAction func whitePieceSeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceSeven
        PieceAction(piece: whitePieceSeven)

    }
    
    @IBAction func whitePieceEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceEight
        PieceAction(piece: whitePieceEight)

    }

    @IBAction func whitePieceNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceNine
        PieceAction(piece: whitePieceNine)

    }
    
    @IBAction func whitePieceTen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceTen
        PieceAction(piece: whitePieceTen)

    }
    
    @IBAction func whitePieceEleven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceEleven
        PieceAction(piece: whitePieceEleven)

    }
    
    @IBAction func whitePieceTwelve(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceTwelve
        PieceAction(piece: whitePieceTwelve)

    }
    
    @IBAction func whitePieceThirteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        
        pieceColor = "white"
        //Set current piece...
        pieceTouched = whitePieceThirteen
        PieceAction(piece: whitePieceThirteen)

    }
    
    
    
    
    
    
    // MARK:  "Blank Piece" Actions
    //"Blank Piece" Actions....
    @IBAction func blankPieceOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceOne
        PieceAction(piece: blankPieceOne)
        
    }
    
    @IBAction func blankPieceTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwo
        PieceAction(piece: blankPieceTwo)
    }
    
    @IBAction func blankPieceThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThree
        PieceAction(piece: blankPieceThree)
    }
    
    @IBAction func blankPieceFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFour
        PieceAction(piece: blankPieceFour)
    }

    
    @IBAction func blankPieceFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFive
        PieceAction(piece: blankPieceFive)
    }
    
    @IBAction func blankPieceSix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSix
        PieceAction(piece: blankPieceSix)
    }
    
    @IBAction func blankPieceSeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeven
        PieceAction(piece: blankPieceSeven)
    }
    
    @IBAction func blankPieceEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceEight
        PieceAction(piece: blankPieceEight)
    }
    
    @IBAction func blankPieceNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceNine
        PieceAction(piece: blankPieceNine)
    }
    
    @IBAction func blankPieceTen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTen
        PieceAction(piece: blankPieceTen)
    }
    
    @IBAction func blankPieceEleven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceEleven
        PieceAction(piece: blankPieceEleven)
    }

    @IBAction func blankPieceTwelve(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwelve
        PieceAction(piece: blankPieceTwelve)
    }

    @IBAction func blankPieceThirteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirteen
        PieceAction(piece: blankPieceThirteen)
    }
    
    @IBAction func blankPieceFourteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFourteen
        PieceAction(piece: blankPieceFourteen)
    }
    
    @IBAction func blankPieceFifteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFifteen
        PieceAction(piece: blankPieceFifteen)
    }
    
    @IBAction func blankPieceSixteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixteen
        PieceAction(piece: blankPieceSixteen)
    }
    
    @IBAction func blankPieceSeventeen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventeen
        PieceAction(piece: blankPieceSeventeen)
    }
    
    @IBAction func blankPieceEighteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceEighteen
        PieceAction(piece: blankPieceEighteen)
    }
    
    @IBAction func blankPieceNineteen(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceNineteen
        PieceAction(piece: blankPieceNineteen)
    }

    @IBAction func blankPieceTwenty(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwenty
        PieceAction(piece: blankPieceTwenty)
    }
    
    @IBAction func blankPieceTwentyOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyOne
        PieceAction(piece: blankPieceTwentyOne)
    }
    
    @IBAction func blankPieceTwentyTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyTwo
        PieceAction(piece: blankPieceTwentyTwo)
    }
    
    @IBAction func blankPieceTwentyThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyThree
        PieceAction(piece: blankPieceTwentyThree)
    }
    
    @IBAction func blankPieceTwentyFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyFour
        PieceAction(piece: blankPieceTwentyFour)
    }
    
    @IBAction func blankPieceTwentyFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyFive
        PieceAction(piece: blankPieceTwentyFive)
    }
    
    @IBAction func blankPieceTwentySix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentySix
        PieceAction(piece: blankPieceTwentySix)
    }
    
    @IBAction func blankPieceTwentySeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentySeven
        PieceAction(piece: blankPieceTwentySeven)
    }
    
    @IBAction func blankPieceTwentyEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyEight
        PieceAction(piece: blankPieceTwentyEight)
    }
    
    @IBAction func blankPieceTwentyNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceTwentyNine
        PieceAction(piece: blankPieceTwentyNine)
    }
    
    @IBAction func blankPieceThirty(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirty
        PieceAction(piece: blankPieceThirty)
    }
    
    @IBAction func blankPieceThirtyOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyOne
        PieceAction(piece: blankPieceThirtyOne)
    }
    
    @IBAction func blankPieceThirtyTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyTwo
        PieceAction(piece: blankPieceThirtyTwo)
    }
    
    @IBAction func blankPieceThirtyThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyThree
        PieceAction(piece: blankPieceThirtyThree)
    }
    
    @IBAction func blankPieceThirtyFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyFour
        PieceAction(piece: blankPieceThirtyFour)
    }
    
    @IBAction func blankPieceThirtyFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyFive
        PieceAction(piece: blankPieceThirtyFive)
    }
    
    @IBAction func blankPieceThirtySix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtySix
        PieceAction(piece: blankPieceThirtySix)
    }
    
    @IBAction func blankPieceThirtySeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtySeven
        PieceAction(piece: blankPieceThirtySeven)
    }
    
    @IBAction func blankPieceThirtyEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyEight
        PieceAction(piece: blankPieceThirtyEight)
    }
    
    @IBAction func blankPieceThirtyNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceThirtyNine
        PieceAction(piece: blankPieceThirtyNine)
    }
    
    @IBAction func blankPieceForty(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceForty
        PieceAction(piece: blankPieceForty)
    }
    
    @IBAction func blankPieceFortyOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyOne
        PieceAction(piece: blankPieceFortyOne)
    }
    
    @IBAction func blankPieceFortyTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyTwo
        PieceAction(piece: blankPieceFortyTwo)
    }
    
    @IBAction func blankPieceFortyThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyThree
        PieceAction(piece: blankPieceFortyThree)
    }
    
    @IBAction func blankPieceFortyFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyFour
        PieceAction(piece: blankPieceFortyFour)
    }
    
    @IBAction func blankPieceFortyFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyFive
        PieceAction(piece: blankPieceFortyFive)
    }
    
    @IBAction func blankPieceFortySix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortySix
        PieceAction(piece: blankPieceFortySix)
    }
    
    @IBAction func blankPieceFortySeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortySeven
        PieceAction(piece: blankPieceFortySeven)
    }
 
    @IBAction func blankPieceFortyEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyEight
        PieceAction(piece: blankPieceFortyEight)
    }
    
    @IBAction func blankPieceFortyNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFortyNine
        PieceAction(piece: blankPieceFortyNine)
    }
    
    @IBAction func blankPieceFifty(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFifty
        PieceAction(piece: blankPieceFifty)
    }
    
    @IBAction func blankPieceFiftyOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyOne
        PieceAction(piece: blankPieceFiftyOne)

    }
    
    @IBAction func blankPieceFiftyTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyTwo
        PieceAction(piece: blankPieceFiftyTwo)

    }
    
    @IBAction func blankPieceFiftyThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyThree
        PieceAction(piece: blankPieceFiftyThree)

    }
    
    @IBAction func blankPieceFiftyFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyFour
        PieceAction(piece: blankPieceFiftyFour)
    }
    
    @IBAction func blankPieceFiftyFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyFive
        PieceAction(piece: blankPieceFiftyFive)

    }
    
    @IBAction func blankPieceFiftySix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftySix
        PieceAction(piece: blankPieceFiftySix)

    }
    
    @IBAction func blankPieceFiftySeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftySeven
        PieceAction(piece: blankPieceFiftySeven)

    }
    
    @IBAction func blankPieceFiftyEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyEight
        PieceAction(piece: blankPieceFiftyEight)

    }
    
    @IBAction func blankPieceFiftyNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceFiftyNine
        PieceAction(piece: blankPieceFiftyNine)

    }
    
    @IBAction func blankPieceSixty(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixty
        PieceAction(piece: blankPieceSixty)

    }
    
    @IBAction func blankPieceSixtyOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyOne
        PieceAction(piece: blankPieceSixtyOne)

    }
    
    @IBAction func blankPieceSixtyTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyTwo
        PieceAction(piece: blankPieceSixtyTwo)

    }
    
    @IBAction func blankPieceSixtyThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyThree
        PieceAction(piece: blankPieceSixtyThree)

    }
    
    @IBAction func blankPieceSixtyFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyFour
        PieceAction(piece: blankPieceSixtyFour)
    }
    
    @IBAction func blankPieceSixtyFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyFive
        PieceAction(piece: blankPieceSixtyFive)

    }
    
    @IBAction func blankPieceSixtySix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtySix
        PieceAction(piece: blankPieceSixtySix)

    }
    
    @IBAction func blankPieceSixtySeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtySeven
        PieceAction(piece: blankPieceSixtySeven)

    }
    
    @IBAction func blankPieceSixtyEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyEight
        PieceAction(piece: blankPieceSixtyEight)

    }
    
    @IBAction func blankPieceSixtyNine(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSixtyNine
        PieceAction(piece: blankPieceSixtyNine)

    }
    
    @IBAction func blankPieceSeventy(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventy
        PieceAction(piece: blankPieceSeventy)

    }
    
    @IBAction func blankPieceSeventyOne(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventyOne
        PieceAction(piece: blankPieceSeventyOne)

    }
    
    @IBAction func blankPieceSeventyTwo(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventyTwo
        PieceAction(piece: blankPieceSeventyTwo)

    }

    @IBAction func blankPieceSeventyThree(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventyThree
        PieceAction(piece: blankPieceSeventyThree)

    }
    
    @IBAction func blankPieceSeventyFour(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventyFour
        PieceAction(piece: blankPieceSeventyFour)
    }

    @IBAction func blankPieceSeventyFive(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventyFive
        PieceAction(piece: blankPieceSeventyFive)

    }
    
    @IBAction func blankPieceSeventySix(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventySix
        PieceAction(piece: blankPieceSeventySix)

    }
    
    @IBAction func blankPieceSeventySeven(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventySeven
        PieceAction(piece: blankPieceSeventySeven)

    }
    
    @IBAction func blankPieceSeventyEight(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = blankPieceSeventyEight
        PieceAction(piece: blankPieceSeventyEight)

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   // MARK:  Piece Image Arrays
    
    //Define Image literal arrays for Black and White Pieces....
    let blackPieceImageArray = [#imageLiteral(resourceName: "Hex_Piece_Black_1_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_2_3_4_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_5_6_2_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_4_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_10_4_9_1_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_4_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_10_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_8_9_10_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_4_8_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_8_9_10_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_9_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_8_9_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_3_5_4_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_2_3_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_3_4_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_10_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_10_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_12_11_10_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_9_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_3_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_5_6_1_3_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_8_4_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_All"), #imageLiteral(resourceName: "Hex_Piece_Black_7_8_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_3_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_4_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_10_12_7_9_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_9_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_5_6_1_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_5_6_3_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_3_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_3_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_9_10_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_8_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_4_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_3_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_12_1_7_4_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_4_6_1_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_2_3_4_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_4_6_3_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_2_3_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_1_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_9_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_8_9_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_12_8_10_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_4_2_3_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_5_6_1_2_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_0_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_7_8_9_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_6_1_2_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_10_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_6_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_5_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_12_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_8_9_10_11_1_pos"), #imageLiteral(resourceName: "Hex_Piece_Black_2_3_5_6_pos")]
    

    
    
    
    
    let whitePieceImageArray = [#imageLiteral(resourceName: "Hex_Piece_White_4_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_8_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_10_4_9_1_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_9_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_9_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_4_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_10_12_7_9_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_8_9_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_2_3_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_3_4_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_6_1_2_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_8_9_pos"), #imageLiteral(resourceName: "Hex_Piece_White_8_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_2_3_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_8_4_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_10_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_10_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_9_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_5_6_1_3_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_10_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_pos"), #imageLiteral(resourceName: "Hex_Piece_White_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_4_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_4_8_pos"), #imageLiteral(resourceName: "Hex_Piece_White_4_2_3_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_4_5_6_1_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_9_pos"), #imageLiteral(resourceName: "Hex_Piece_White_All"), #imageLiteral(resourceName: "Hex_Piece_White_4_5_6_3_pos"), #imageLiteral(resourceName: "Hex_Piece_White_4_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_3_pos"), #imageLiteral(resourceName: "Hex_Piece_White_0_pos"), #imageLiteral(resourceName: "Hex_Piece_White_3_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_12_11_10_pos"), #imageLiteral(resourceName: "Hex_Piece_White_9_10_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_3_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_3_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_3_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_4_6_1_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_2_3_4_pos"), #imageLiteral(resourceName: "Hex_Piece_White_2_4_6_3_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_2_3_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_8_9_10_11_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_8_9_10_11_1_pos"), #imageLiteral(resourceName: "Hex_Piece_White_12_1_7_4_pos"), #imageLiteral(resourceName: "Hex_Piece_White_5_pos"), #imageLiteral(resourceName: "Hex_Piece_White_8_9_10_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_10_pos"), #imageLiteral(resourceName: "Hex_Piece_White_12_8_10_pos"), #imageLiteral(resourceName: "Hex_Piece_White_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_5_6_1_2_pos"), #imageLiteral(resourceName: "Hex_Piece_White_8_9_pos"), #imageLiteral(resourceName: "Hex_Piece_White_4_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_2_3_4_5_6_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_3_5_4_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_4_8_11_pos"), #imageLiteral(resourceName: "Hex_Piece_White_4_5_6_2_pos"), #imageLiteral(resourceName: "Hex_Piece_White_1_4_pos"), #imageLiteral(resourceName: "Hex_Piece_White_7_12_pos"), #imageLiteral(resourceName: "Hex_Piece_White_3_pos")]
    
    
 
    // MARK: Piece Action
    
    func PieceAction(piece: UIButton) {
        
        //Make sure we know what piece was last clicked...
        lastPieceClicked = currentPieceClicked
        //buttonPressed = buttonPressed + 1
        
        if(pieceColor == "white") {
            currentPieceClicked = "white"
            NSLog("\n\n White piece is touched.... Pressed %@ times. \n\n", buttonPressed as NSObject)
            if(currentPieceClicked == "white" && lastPieceClicked == "white" && buttonPressed == 1){
                if( whoseTurn == "white" && (lastPieceTouched! as NSObject) == (piece as NSObject) ){
                    NSLog("\n\n Mutating White Piece \n\n")
                    
                    //Generate Random number for promotion...
                    let randomNumber: String = String(arc4random_uniform(100))
                    self.pieceTouched?.setTitle(randomNumber, for: .normal)
                    NSLog("White Piece Mutated to %@", randomNumber)
                    
                    //Generate Random Image for mutation...
                    let randomIndex = Int(arc4random_uniform(UInt32(self.whitePieceImageArray.count)))
                    let randomWhiteImg = self.whitePieceImageArray[randomIndex]
                    self.pieceTouched?.setBackgroundImage(randomWhiteImg, for: .normal)
                    
                    //Give a popup informing player piece has mutated...
                    let message: String = "White Piece Mutated to " + randomNumber
                    ShowAlert(titleString: "White Has Mutated", messageString: message, isCancellable: false)
                    
                    //Reset Variables...
                    buttonPressed = 0
                    currentPieceClicked = "nothing"
                    lastPieceClicked = "white"
                    
                    NSLog("Switching Sides After Mutating White Piece\n")
                    SwitchTurns()
                }
            }
            if(currentPieceClicked == "white" && lastPieceClicked == "black" && buttonPressed == 1){
                if( whoseTurn == "black" ){
                    let pieceCanBeCaptured = checkCapture()
                    if(pieceCanBeCaptured == true){
                        NSLog("\n\n Capturing White Piece \n\n")
                        
                        //Generate Blank piece at last piece's coordinates...
                        addNewBlankButton(centerCoordinate: lastPieceTouched?.center)
                    
                        //Replace current piece touched's frame with last piece touched's frame...
                        //(Replace current piece touched with last piece touched)....
                        lastPieceTouched?.frame = (pieceTouched?.frame)!
                        
                        
                        //Decrement number of white pieces...
                        numberWhitePieces = numberWhitePieces - 1
                        
                        if( numberWhitePieces > 0 ){
                            NSLog("Number of white pieces now: %@", numberWhitePieces as NSObject)
                        }else{
                            NSLog("Game Over. Black Wins.")
                            self.blackWinsImage.isHidden = false
                            
                            //Turn Black Wins image 180 degrees so that black can see it
                            //properly...
                            self.blackWinsImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                        }
                    
                        //Reset variables...
                        buttonPressed = 0
                        currentPieceClicked = "nothing"
                        lastPieceClicked = "white"
                        self.pieceTouched?.isHidden = true
                        //whoseTurn = "white"
                        NSLog("Switching Sides After Capturing White Piece\n")
                        SwitchTurns()
                    }else{
                        NSLog("\n\n White Piece Cannot Be Captured!! \n\n")
                        
                        //Give a popup warning player piece cannot be captured...
                        let message: String = "White Piece Cannot Be Captured."
                        ShowAlert(titleString: "Capture Not Allowed", messageString: message, isCancellable: false)
                    }
                }
            }
            
            
            
        }else if(pieceColor == "black"){
            currentPieceClicked = "black"
            NSLog("\n\n Black piece is touched.... Pressed %@ times. \n\n", buttonPressed as NSObject)
            if(currentPieceClicked == "black" && lastPieceClicked == "black" && buttonPressed == 1){
                if( whoseTurn == "black" && (lastPieceTouched! as NSObject) == (piece as NSObject) ){
                    
                    NSLog("\n\n Mutating Black Piece \n\n")
                    
                    //Generate Random number for promotion...
                    let randomNumber: String = String(arc4random_uniform(100))
                    self.pieceTouched?.setTitle(randomNumber, for: .normal)
                    NSLog("Black Piece Mutated to %@", randomNumber)
                    
                    //Generate Random Image for mutation...
                    let randomIndex = Int(arc4random_uniform(UInt32(self.blackPieceImageArray.count)))
                    let randomBlackImg = self.blackPieceImageArray[randomIndex]
                    self.pieceTouched?.setBackgroundImage(randomBlackImg, for: .normal)
                    
                    //Give a popup informing player piece has mutated...
                    let message: String = "Black Piece Mutated to " + randomNumber
                    ShowAlert(titleString: "Black Has Mutated", messageString: message, isCancellable: false)
                    
                    //Reset Variables...
                    buttonPressed = 0
                    currentPieceClicked = "nothing"
                    lastPieceClicked = "black"
                    //whoseTurn = "white"
                    NSLog("Switching Sides After Mutating Black Piece\n")
                    SwitchTurns()
                }
            }
            if(currentPieceClicked == "black" && lastPieceClicked == "white" && buttonPressed == 1){
                if( whoseTurn == "white"){
                    let pieceCanBeCaptured = checkCapture()
                    if(pieceCanBeCaptured == true){
                        NSLog("\n\n Capturing Black Piece \n\n")
                        
                        //Generate Blank piece at last piece's coordinates...
                        addNewBlankButton(centerCoordinate: lastPieceTouched?.center)
                    
                        //Replace current piece touched's frame with last piece touched's frame...
                        //(Replace current piece touched with last piece touched....
                        lastPieceTouched?.frame = (pieceTouched?.frame)!
                        
                        //Decrement number of black pieces...
                        numberBlackPieces = numberBlackPieces - 1
                        
                        if( numberBlackPieces > 0 ){
                            NSLog("Number of black pieces now: %@", numberBlackPieces as NSObject)
                        }else{
                            NSLog("Game Over. White Wins.")
                            self.whiteWinsImage.isHidden = false
                        }
                    
                        //Reset variables...
                        buttonPressed = 0
                        currentPieceClicked = "nothing"
                        lastPieceClicked = "black"
                        self.pieceTouched?.isHidden = true
                        //whoseTurn = "black"
                        NSLog("Switching Sides After Capturing Black Piece\n")
                        SwitchTurns()
                    }else{
                        NSLog("\n\n Black Piece Cannot Be Captured!! \n\n")
                        
                        //Give a popup warning player piece cannot be captured...
                        let message: String = "Black Piece Cannot Be Captured."
                        ShowAlert(titleString: "Capture Not Allowed", messageString: message, isCancellable: false)
                    }
                }
            }
            
            
            
        }else{
            NSLog("\n\n Something Else was touched. \n\n")
            print("currentPieceClicked: \(currentPieceClicked) \n lastPieceClicked: \(lastPieceClicked) \n buttonPressed: \(buttonPressed) \n\n")
            //If "Blank" piece is touched...
            if(currentPieceClicked == "blank" && lastPieceClicked == "blank" && buttonPressed == 1){
                
                    NSLog("\n\n Capturing --BLANK-- Piece \n\n")
                    
                    //Replace current piece touched's frame with last piece touched's frame...
                    //(Replace current piece touched with last piece touched)....
                    let centerPoint: CGPoint = (pieceTouched?.center)!
                    let lastCenterPoint: CGPoint = (lastPieceTouched?.center)!
                    lastPieceTouched?.center = centerPoint
                    pieceTouched?.center = lastCenterPoint
                    
                    //Reset variables...
                    buttonPressed = 0
                    currentPieceClicked = "nothing"
                    lastPieceClicked = "nothing"
                
                    NSLog("Switching Sides After Capturing BLANK Piece\n")
                    SwitchTurns()
                //}
            }

        }
        
        if(buttonPressed < 1){
            buttonPressed = buttonPressed + 1
        }else if(buttonPressed > 1){
            buttonPressed = 0
            lastPieceClicked = "nothing"
        }
        
        
        
        publicTouchCount = 1
        pieceTouched = piece
        NSLog("%@ Pressed: %@", pieceColor as NSObject, buttonPressed as NSObject)
        
        
        
        if( whoseTurn == "white" && currentPieceClicked == "white" ){
            NSLog("\n\n It's White's Turn, moving white...\n\n")
            MovePiece(pieceName: piece, numberTimesPressed: buttonPressed, color: pieceColor)
            
        }else if( whoseTurn == "black" && currentPieceClicked == "black" ){
            NSLog("\n\n It's Black's Turn, moving black...\n\n")
            MovePiece(pieceName: piece, numberTimesPressed: buttonPressed, color: pieceColor)
            
        }else{
            
            if(currentPieceClicked != "nothing" && currentPieceClicked != "blank"){
                NSLog("\n\n %@ piece cannot move yet. \n\n", currentPieceClicked)
            
                //Give a popup warning player it's not thier turn...
                let message: String = "It is not " + currentPieceClicked + "'s turn yet"
                ShowAlert(titleString: "Cannot Move Yet", messageString: message, isCancellable: false)
            }
            
            //Resetting variables to make sure piece touched can't move...
            buttonPressed = 0
            currentPieceClicked = "nothing"
            lastPieceClicked = "nothing"
            publicLocation = origin
            
        }
        
        
        
    }
    
    
    func checkCapture() -> Bool {
        let pieceCapturing: String = (lastPieceTouched?.currentTitle)!
        let pieceCaptured: String = (pieceTouched?.currentTitle)!
        let pieceCapturingInt: Int = Int(pieceCapturing)!
        let pieceCapturedInt: Int = Int(pieceCaptured)!
        
        if( pieceCapturingInt >= pieceCapturedInt ){
            return true
        }else if(pieceColor == "blank") {
            return true
        }else{
            return false
        }
    }
    
    
    

    
    func configureView() {
       
    }

    
    
    
    
    // MARK: viewDidLoad Method
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
        
        //Randomize Piece numbers...
        RandomizeButtonNumbers()
        
        
        
        
        
         //Setting Random Images for Each Black Piece...
         var randomIndex: Int = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
         var randomBlackImg = blackPieceImageArray[randomIndex]
         blackPieceOne.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceTwo.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceThree.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceFour.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceFive.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceSix.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceSeven.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceEight.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceNine.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceTen.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceEleven.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceTwelve.setBackgroundImage(randomBlackImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(blackPieceImageArray.count)))
        randomBlackImg = blackPieceImageArray[randomIndex]
        blackPieceThirteen.setBackgroundImage(randomBlackImg, for: .normal)
        
        //End Black Piece Assignments...
        
        
        
        
        
        
        //Setting Random Images for Each White Piece...
        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        var randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceOne.setBackgroundImage(randomWhiteImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceTwo.setBackgroundImage(randomWhiteImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceThree.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceFour.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceFive.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceSix.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceSeven.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceEight.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceNine.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceTen.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceEleven.setBackgroundImage(randomWhiteImg, for: .normal)

        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceTwelve.setBackgroundImage(randomWhiteImg, for: .normal)
        
        randomIndex = Int(arc4random_uniform(UInt32(whitePieceImageArray.count)))
        randomWhiteImg = whitePieceImageArray[randomIndex]
        whitePieceThirteen.setBackgroundImage(randomWhiteImg, for: .normal)

        //End White Piece Assignments...
        
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


    // MARK: Move Piece
    //Movement Functions
    func MovePiece(pieceName: UIButton, numberTimesPressed: Int, color: String) {
        
            let startingLocation = pieceName.center
            
            NSLog("Starting Coordinates:  %@",startingLocation as NSObject)
        
        
            NSLog("\n\n publicTapCount: %@ \n", publicTapCount as NSObject)
            NSLog("publicTouchCount: %@ \n\n", publicTouchCount as NSObject)
        
        /*  For if Game saving is to be implimented...
        if(publicTapCount as! Int == 2){
            NSLog("Whose Turn: %@ \n", whoseTurn)
            NSLog("Piece Touched: %@", pieceTouched! as NSObject)
            NSLog("\n\n .-.Save Game Y/N?  Popup.-.\n\n")
            /*
            //Alert Asking for Game Save...
            let message: String = "Press OK to Save Game"
            ShowAlert(titleString: "Save Game?", messageString: message, isCancellable: true)
 
            //Reset publicTapCount...
            publicTapCount = 0 as NSObject
            */
        }
        */
    
        
        let canPieceMoveYet = PieceCanMoveYet()
        
        if(publicLocation == origin ){
            NSLog("\n\n publicLocation is at the origin \n\n")
        }else{
            if(publicTouchCount == 1 && canPieceMoveYet == true){
                let centerX = publicLocation.x - ( pieceName.frame.width / 2 )
                let centerY = publicLocation.y - ( pieceName.frame.height / 2 )
                
                pieceName.frame = CGRect(x: centerX, y: centerY, width: pieceName.frame.width, height: pieceName.frame.height)
                
                
                NSLog("\n\n Moving Piece to %@, %@ \n\n", publicLocation.x as NSObject, publicLocation.y as NSObject)
                
                NSLog("Switching Sides INSIDE Piece Move....")
                //SwitchTurns()
            }
        
            NSLog("Switching Sides After Moving Piece\n")
            SwitchTurns()
            
        }//EndElse...
        
        
        publicLocation = origin
        
    }
    

    
    
    // MARK: Touches Began
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //let touchCount = touches.count
        let touch = touches.first
        //let tapCount = touch!.tapCount
        
        publicTouchCount = touches.count as Int
        publicTouch = touches.first!
        publicTapCount = touch!.tapCount as NSObject
        
        
        //let touch = touches.anyObject()! as UITouch
        let location = touch?.location(in: self.view)
        publicLocation = location!
        
        
        if pieceTouched != nil{
            //Simply used to catch nil pieceTouched variable....
            
        }else{
            
            /*  //May uncomment later if game save function is implemented....
            NSLog("Menu Popup: Save or New Game")
            
            //Alert Asking for Game Save...
            let message: String = "Press OK to Save Game"
            ShowAlert(titleString: "Save Game?", messageString: message, isCancellable: true)
            
            //Resetting variables to make sure piece no pieces move on next move...
            buttonPressed = 0
            currentPieceClicked = "nothing"
            lastPieceClicked = "nothing"
            publicLocation = origin
            */
        }
        
        
    }
    
    
    //MARK PieceCanMoveYet
    func PieceCanMoveYet() -> Bool {
        if(publicTouchCount == 1 && whoseTurn == "white" && currentPieceClicked == "white"){
            return true
        }else if(publicTouchCount == 1 && whoseTurn == "black" && currentPieceClicked == "black"){
            return true
        }else{
            return false
        }
        
    }
    
    
    
    
    // MARK: Switch Turns
    func SwitchTurns() {
        NSLog("\n\n It is currently %@ 's turn. Switching Sides... \n\n", whoseTurn)
        
        //Switch Sides of whose turn it is
        if( whoseTurn == "white"){
            whoseTurn = "black"
        }else if(whoseTurn == "black"){
            whoseTurn = "white"
        }
        
        //Rotate Buttons to 180 Degrees so that Black/White can see pieces from their position...
        //NSLog("Rotating Buttons at 1992...\n")
        InvertButtons(whoseTurn: whoseTurn)
        
        NSLog("It is now %@ 's turn. 1", whoseTurn)
        
    }
    
    
    
    // MARK: RandomizeButtonNumbers
    func RandomizeButtonNumbers() {
        for view in self.view.subviews as [UIView] {
            if let btn = view as? UIButton {
                //Generate Random number for promotion...
                let randomNumber: String = String(arc4random_uniform(100))
                btn.setTitle(randomNumber, for: .normal)
            }
        }
    }
    
    
    
    // MARK: ShowAlert
    func ShowAlert(titleString: String, messageString: String, isCancellable: Bool) {
        
        let alertController = UIAlertController(
            title: titleString,
            message: messageString,
            preferredStyle: UIAlertController.Style.alert
        )
        
        
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: UIAlertAction.Style.destructive) { (action) in
            //This simply allows the alertController to be destroyable...
        }
        
        
        let confirmAction = UIAlertAction(
        title: "OK", style: UIAlertAction.Style.default) { (action) in
            // ...
        }
        
        alertController.addAction(confirmAction)
        if(isCancellable == true){
            alertController.addAction(cancelAction)
        }
        
        if( whoseTurn == "white" ){
            present(alertController, animated: true, completion: nil)
        }
        
        if( whoseTurn == "black" ){
            //Turn alert Controller 180 degrees so player playing black can see it...
            present(alertController, animated: true, completion: {() -> Void in
                alertController.view.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            })
        }
        
    }
    
    
    
    
    
    
    
    // MARK: GetPieceImages
    func GetPieceImages(bundle: String) -> [UIImage] {
        let fileManager = FileManager.default
        let bundleURL = Bundle.main.bundleURL
        let assetURL = bundleURL.appendingPathComponent(bundle)
        let contents = try! fileManager.contentsOfDirectory(at: assetURL, includingPropertiesForKeys: [URLResourceKey.nameKey, URLResourceKey.isDirectoryKey], options: .skipsHiddenFiles)
        
        var imageNameArr: [String] = []
        var imageArr: [UIImage] = []
        
        for item in contents
        {
            print(item.lastPathComponent)
            let UIImageString: String = bundle + "/" + item.lastPathComponent
            print(UIImageString)
            imageNameArr.append(UIImageString)
            
        }
        
        for index in 0...imageNameArr.count-1
        {
            print(imageNameArr[index])
            
            imageArr.append(UIImage(named: String(imageNameArr[index]))!)
        }
        
        return imageArr
        
    }
    
    
    
    
    
    
    
    func addNewBlankButton(centerCoordinate: CGPoint!) {
        
        let blankButton = UIButton(frame: CGRect(x: centerCoordinate.x, y: centerCoordinate.y, width: 29, height: 33))
        blankButton.center = centerCoordinate
        
        //For Debugging purposes... Commented out makes the new button transparent
        //blankButton.backgroundColor = UIColor.darkGray
        
        blankButton.titleLabel?.text = "\(blankPieceNumber)"
        blankButton.addTarget(self, action: #selector(DetailViewController.blankButtonPressed(_:)), for: UIControl.Event.touchUpInside)
        
        self.view.addSubview(blankButton)  // myView in this case is the view you want these buttons added
        
        blankPieceNumber = blankPieceNumber + 1
        
    }
    
    
    
    @objc func blankButtonPressed(_ sender: Any) {
        //Back-up last piece clicked, so that we know what was previously touched
        lastPieceTouched = pieceTouched
        currentPieceClicked = "blank"
        pieceColor = "blank"
        //Set current piece...
        pieceTouched = (sender as! UIButton)
        PieceAction(piece: (sender as! UIButton) )
    }
    
    
    
    // MARK: Invert Buttons
    func InvertButtons(whoseTurn: String) {
        NSLog("This is inside the Invert Function...\n\n")
        
        for view in self.view.subviews as [UIView] {
            if let btn = view as? UIButton {
                //Rotate Buttons 180 Degrees if it's black's turn...
                if(whoseTurn == "black"){
                    btn.titleLabel?.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                }else{
                    btn.titleLabel?.transform = CGAffineTransform.identity
                }
                
            }
        }
        
    }

    
    
    
    
}//endDetailViewController...


