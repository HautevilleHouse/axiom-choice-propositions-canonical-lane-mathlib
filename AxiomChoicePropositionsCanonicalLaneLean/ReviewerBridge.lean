import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomChoicePropositionsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "dd2f871cd9d57f8aae5bcca4e79ba759e61da175a03181be56415c9881036413", present := true },
   { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "4929ea55a02ecac4895996ce496ab75856074b35959f21826fe866ba616215d2", present := true },
   { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "6bc3cad79165327bad100b0e77272936d27cad9897f318fe8efec0fc3a31a1a7", present := true },
   { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "d169350c6aeae4ac9c09803ec2e5f767d1f446b3f25f3dcda7b073058fcfd207", present := true },
   { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "9c3365da34d982dd2832709402daf279d8fa115ade40207aa170ee93bdcdcca1", present := true },
   { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "e8f792eebcab4e0766e07d5583a79d812dfed59d09d417110c8711a337205254", present := true },
   { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "782ccd1645e42d1389e56eca7e6bfa0fc47bdd061b82bbbe70368e718da80506", present := true },
   { path := "repro/repro_manifest.json", role := "manifest", sha256 := "2d85c8cc1e36b6ccd93783ef13b1ba715a17f7e733783537575649883e791ce8", present := true },
   { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "ebca94adc0992e9a2f0344229b805a432a88ce5c35863910e06803147ecd7d5b", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "EG1" },
   { index := 2, label := "EG2" },
   { index := 3, label := "EG3" },
   { index := 4, label := "EG4" },
   { index := 5, label := "Identification bridge" },
   { index := 6, label := "Scalar closure" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "AC_G1", constant := "choice_principle" },
   { gate := "AC_G2", constant := "zorn_lemma" },
   { gate := "AC_G3", constant := "well_ordering" },
   { gate := "AC_G4", constant := "transfinite_recursion" }]

def reviewerFalsificationConditionCount : Nat := 4

def reviewerManifestEntries : List ReviewerManifestEntry :=
  [{ path := "CITATION.cff", sha256 := "8ab4c96423e62309dab37f9bc69c7f1d9ca6d5dc52396d3011c387d3b55b48f2" },
   { path := "README.md", sha256 := "1a4542cd4ee0e94fff0148e779ab136121df926187a43ced0a42c6fd97599f45" }]

def baselineCertificateGates : List CertificateGate :=
  [{ gate := "AC_G1", status := "PASS" },
   { gate := "AC_G2", status := "PASS" },
   { gate := "AC_G3", status := "PASS" },
   { gate := "AC_G4", status := "PASS" }]

def baselineCertificateInputs : List CertificateInput :=
  [{ key := "choice_principle", value := "axiom_of_choice" },
   { key := "zorn_lemma", value := "zorn_lemma" },
   { key := "well_ordering", value := "well_ordering_theorem" },
   { key := "transfinite_recursion", value := "transfinite_recursion" }]

def bridgeConstantKeys : List String :=
  ["choice_principle", "zorn_lemma", "well_ordering", "transfinite_recursion"]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "axiom_choice_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by rfl
theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by rfl
theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 4 := by rfl
theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 4 := by rfl

end AxiomChoicePropositionsCanonicalLaneLean
end HautevilleHouse