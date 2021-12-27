//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchCoin: UITextField!
    @IBOutlet weak var coinType: UILabel!
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coinManager = CoinManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coinManager.delegate = self
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        searchCoin.delegate = self // search코인 uitextfielddelegate해서 내가 이거 처리할 것이다 선언.
        //coinType.delegate = self

        
    }
    
    
   
}


//MARK: - CoinManagerDelegate
//
extension ViewController: CoinManagerDelegate {
    
    func didUpdatePrice(price: String, currency: String) {
        
        DispatchQueue.main.async {
            self.bitcoinLabel.text = price
            self.currencyLabel.text = currency
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

//MARK: - UIPickerView DataSource & Delegate & textfield

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate ,UITextFieldDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }// array cols 가져옴. Return 1로 잘 됐다고 함
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return coinManager.currencyArray.count
      }// array row를 count해서 return
    
      // 이 위에는 data Source부분이고, 밑에는
    
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return coinManager.currencyArray[row]
      }// struct의 array의 string을 가져와서 pickerview에 보여서 interact함
      
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: selectedCurrency, coinName: searchCoin.text!)
        print(searchCoin.text!)
      }// 이 함수는 pickerview에서 row를 가져오는건데, 이것을 이용해서 coinmanager에 getCoinPrice함수를 통해 pickerview에 있는 함수에 보내줌.
    
    // 이 function은 resign할때 처음으로 요청되는것이고 bool return,
    func textFieldShouldReturn(_ textField: UITextField)-> Bool {
        searchCoin.endEditing(true)
        // endEditing하면 그 값 리턴 자동으로해줌
       // print(searchCoin.text!)
        return true
    }
    
    // 이 function은 아예 끝나고 요청되는것.(should return끝나고)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(searchCoin.text!)
        coinType.text = searchCoin.text!
        //WHO.WHAT = VALUE
        
        //끝나고 밑에처럼 아예 빈칸 만들어 버릴 수 있음
        //searchCoin.text = ""
    }
}

