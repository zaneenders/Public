/**
/// Compares Two blocks to test if they are equal
/// Will return false if any component of the block isn't Equatable
internal func areEqual(_ block1: some Block, _ block2: some Block) -> Bool {
    let m1: Mirror = Mirror(reflecting: block1)
    let m2: Mirror = Mirror(reflecting: block2)
    if m1.children.count != m2.children.count { return false }
    for (c1, c2) in zip(m1.children, m2.children) {
        // skip State Properties because there values will be replaced later
        if c1.value is any StateProperty { continue }
        // Check if remaining properties are equal
        if c1.label != c2.label { return false }
        guard let e1 = c1.value as? any Equatable else { return false }
        guard let e2 = c2.value as? any Equatable else { return false }
        if !isEqual(e1, e2) { return false }
    }
    return true
}

*/
