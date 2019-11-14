//
//  Kid(have kid).swift
//  Pocketbank
//
//  Created by Nguyễn Minh Hiếu on 11/13/19.
//  Copyright © 2019 Nguyễn Minh Hiếu. All rights reserved.
//

import UIKit

class Kid_have_kid_: UIViewController {

    @IBOutlet weak var table_list: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table_list.dataSource = self
        table_list.delegate = self
        table_list.register(UINib(nibName: "JoinTableViewCell", bundle: nil), forCellReuseIdentifier: "JoinTableViewCell")
    }
    
}

extension Kid_have_kid_ : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = table_list.dequeueReusableCell(withIdentifier: "JoinTableViewCell", for: indexPath) as? JoinTableViewCell else{
            return UITableViewCell()
        }
        return cell
    }
}

extension Kid_have_kid_ : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
