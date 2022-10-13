/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
//struct MasterYoda {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 9 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "Do or do not." }
//}
//
//struct MasterObiWan {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "These are not the droids you're looking for." }
//}
//
//struct MasterQuiGon {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func mindControl() -> String { return "Republic credits will do." }
//  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
//}
//
//struct DarthVader {
//  func lightSaberSkill() -> Int { return 9 }
//  func telekinesis() -> Int { return 8 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return false }
//}
//
//struct DarthSidious {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 7 }
//  func prescience() -> Int { return 6 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return true }
//}
//
//struct DarthTyrannous {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return false }
//  func forceLightning() -> Bool { return true }
//}

/*:
 Place your refactored structs below:
 */
protocol People: lightSaberSkill, telekinesis, prescience{}

protocol Master: People, introspection, mindControl {}

protocol Darth: People, forceChoke, forceLightning {}

protocol lightSaberSkill {
  func lightSaberSkill() -> Int
}

extension lightSaberSkill {
  func lightSaberSkill() -> Int  { return 8 }
}

protocol telekinesis {
  func telekinesis() -> Int
}

extension telekinesis {
  func telekinesis() -> Int  { return 5 }
}

protocol prescience {
  func prescience() -> Int
}

extension prescience {
  func prescience() -> Int  { return 5 }
}

protocol introspection {
  func introspection() -> String
}

extension introspection {
  func introspection() -> String { return "Search your feelings." }
}

protocol mindControl {
  func mindControl() -> String
}

extension mindControl {
  func mindControl() -> String { return "Do or do not." }
}

protocol forceChoke {
  func forceChoke() -> Bool
}

extension forceChoke {
  func forceChoke() -> Bool { return true }
}

protocol forceLightning {
  func forceLightning() -> Bool
}

extension forceLightning {
  func forceLightning() -> Bool { return true }
}

struct MasterYoda: Master {
    func telekinesis() -> Int { return 9 }
}

struct MasterObiWan: Master {
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon: Master {
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader: Darth {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious: Darth {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

struct DarthTyrannous: Darth {
  func forceChoke() -> Bool { return false }
}




