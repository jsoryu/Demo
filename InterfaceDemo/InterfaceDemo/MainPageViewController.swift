//
//  MainPageViewController.swift
//  InterfaceDemo
//
//  Created by Jonathan Soryu on 2017-03-08.
//  Copyright © 2017 Jonathan Soryu. All rights reserved.
//

import UIKit

class MainPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    // Declares array of ViewControllers. NavigationControllers are registered
    let pages = ["ProfileNavigationController", "SummaryNavigationController", "AccountNavigationController"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.dataSource = self
        self.delegate = self
        
        // Define array of ViewControllers and mark starting point of display
        setViewControllers([viewControllerAtIndex(index: 1)!], direction: .forward, animated: false, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Custom Codes

    // Custom function to retrieve ViewController information from array defined above
    func viewControllerAtIndex(index: Int) -> UIViewController? {
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: pages[index])
        
        return viewController
    }
}

extension MainPageViewController: UIPageViewControllerDelegate {
    
    // MARK: UIPageViewControllerDelegate
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let index = pages.index(of: viewController.restorationIdentifier!){
            if index > 0 {
                return viewControllerAtIndex(index: index - 1)
            }
        }
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let index = pages.index(of: viewController.restorationIdentifier!){
            if index < pages.count - 1 {
                return viewControllerAtIndex(index: index + 1)
            }
        }
        
        return nil
    }

}
