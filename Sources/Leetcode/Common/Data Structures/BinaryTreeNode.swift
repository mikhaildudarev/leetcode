//  Created by Mikhail Dudarev on 09.07.2022.

import Algo

class BinaryTreeNode {
    
    var val: Int
    var left: BinaryTreeNode?
    var right: BinaryTreeNode?
    
    init() {
        val = 0
        left = nil
        right = nil
    }
    
    init(_ val: Int) {
        self.val = val
        left = nil
        right = nil
    }
    
    init(_ val: Int, _ left: BinaryTreeNode?, _ right: BinaryTreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
}

extension BinaryTreeNode {
    
    convenience init?(tree: BinaryTree<Int>) {
        self.init(node: tree.root)
    }
    
    convenience init?(node: BinaryTree<Int>.Node?) {
        guard let node = node else {
            return nil
        }
        self.init(node.value, BinaryTreeNode(node: node.left), BinaryTreeNode(node: node.right))
    }
    
}

extension BinaryTree {
    
    convenience init(root: BinaryTreeNode?, iteratorType: BinaryTree.Iterator.TraversalType = .preOrder) {
        self.init(root: BinaryTree.Node(root), iteratorType: iteratorType)
    }
    
}

extension BinaryTree.Node {
    
    convenience init?(_ node: BinaryTreeNode?) {
        guard let node = node else {
            return nil
        }
        self.init(value: node.val as! Element, left: BinaryTree.Node(node.left), right: BinaryTree.Node(node.right))
    }
    
}
