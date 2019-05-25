﻿// ------------------------------------------------------------------------------
//  <auto-generated>
//      This code was generated by SpecFlow (http://www.specflow.org/).
//      SpecFlow Version:2.1.0.0
//      SpecFlow Generator Version:2.0.0.0
// 
//      Changes to this file may cause incorrect behavior and will be lost if
//      the code is regenerated.
//  </auto-generated>
// ------------------------------------------------------------------------------
#region Designer generated code
#pragma warning disable
namespace SignUp.EndToEndTests
{
    using TechTalk.SpecFlow;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("TechTalk.SpecFlow", "2.1.0.0")]
    [System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [NUnit.Framework.TestFixtureAttribute()]
    [NUnit.Framework.DescriptionAttribute("Viewer Sign Up")]
    public partial class ViewerSignUpFeature
    {
        
        private TechTalk.SpecFlow.ITestRunner testRunner;
        
#line 1 "ViewerSignUp.feature"
#line hidden
        
        [NUnit.Framework.TestFixtureSetUpAttribute()]
        public virtual void FeatureSetup()
        {
            testRunner = TechTalk.SpecFlow.TestRunnerManager.GetTestRunner();
            TechTalk.SpecFlow.FeatureInfo featureInfo = new TechTalk.SpecFlow.FeatureInfo(new System.Globalization.CultureInfo("en-US"), "Viewer Sign Up", "\tAs a viewer interested in the webinar\r\n\tI want to sign up to register\r\n\tSo that " +
                    "I can watch the webinar", ProgrammingLanguage.CSharp, ((string[])(null)));
            testRunner.OnFeatureStart(featureInfo);
        }
        
        [NUnit.Framework.TestFixtureTearDownAttribute()]
        public virtual void FeatureTearDown()
        {
            testRunner.OnFeatureEnd();
            testRunner = null;
        }
        
        [NUnit.Framework.SetUpAttribute()]
        public virtual void TestInitialize()
        {
        }
        
        [NUnit.Framework.TearDownAttribute()]
        public virtual void ScenarioTearDown()
        {
            testRunner.OnScenarioEnd();
        }
        
        public virtual void ScenarioSetup(TechTalk.SpecFlow.ScenarioInfo scenarioInfo)
        {
            testRunner.OnScenarioStart(scenarioInfo);
        }
        
        public virtual void ScenarioCleanup()
        {
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("Sign Up with Valid Details")]
        [NUnit.Framework.TestCaseAttribute("Viewer", "A", "a.viewer@company.com", "United States", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "B", "b.viewer@company.com", "United Kingdom", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "C", "c.viewer@company.com", "United States", "Database Administrator", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "D", "d.viewer@company.com", "United Kingdom", "IT Pro", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "E", "e.viewer@company.com", "United States", "IT Pro", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "F", "f.viewer@other.com", "Sweden", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "G", "g.viewer@company.com", "United States", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "H", "h.viewer@company.com", "United States", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "I", "i.viewer@company.com", "United Kingdom", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "J", "j.viewer@company.com", "United States", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "K", "k.viewer@other.com", "Sweden", "Database Administrator", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "L", "l.viewer@company.com", "United Kingdom", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "M", "m.viewer@company.com", "Sweden", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "N", "n.viewer@company.com", "United Kingdom", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "O", "o.viewer@company.com", "United States", "IT Pro", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "P", "p.viewer@other.com", "Sweden", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "Q", "q.viewer@other.com", "Sweden", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "R", "r.viewer@company.com", "United Kingdom", "IT Pro", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "S", "s.viewer@company.com", "United States", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "T", "t.viewer@company.com", "United Kingdom", "Database Administrator", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "U", "u.viewer@company.com", "United States", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "V", "v.viewer@other.com", "Sweden", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "W", "w.viewer@company.com", "United States", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "X", "x.viewer@company.com", "United Kingdom", "Developer", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "Y", "y.viewer@company.com", "United States", "Architect", new string[0])]
        [NUnit.Framework.TestCaseAttribute("Viewer", "Z", "z.viewer@other.com", "Sweden", "Developer", new string[0])]
        public virtual void SignUpWithValidDetails(string firstName, string lastName, string emailAddress, string country, string role, string[] exampleTags)
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("Sign Up with Valid Details", exampleTags);
#line 6
this.ScenarioSetup(scenarioInfo);
#line 7
 testRunner.Given("I browse to the Sign Up Page at \"http://web-app/SignUp\"", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line 8
 testRunner.And(string.Format("I enter details \'{0}\' \'{1}\' \'{2}\' \'{3}\' \'{4}\'", firstName, lastName, emailAddress, country, role), ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "And ");
#line 9
 testRunner.When("I press Go", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "When ");
#line 10
 testRunner.Then("I am shown the Thank You page", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line 11
 testRunner.And("my details are saved", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "And ");
#line hidden
            this.ScenarioCleanup();
        }
    }
}
#pragma warning restore
#endregion
