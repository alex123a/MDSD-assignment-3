/*
 * generated by Xtext 2.33.0
 */
grammar InternalMath;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package dk.sdu.mmmi.mdsd.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package dk.sdu.mmmi.mdsd.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import dk.sdu.mmmi.mdsd.services.MathGrammarAccess;

}
@parser::members {
	private MathGrammarAccess grammarAccess;

	public void setGrammarAccess(MathGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleProgram
entryRuleProgram
:
{ before(grammarAccess.getProgramRule()); }
	 ruleProgram
{ after(grammarAccess.getProgramRule()); } 
	 EOF 
;

// Rule Program
ruleProgram 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getProgramAccess().getGroup()); }
		(rule__Program__Group__0)
		{ after(grammarAccess.getProgramAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExternal
entryRuleExternal
:
{ before(grammarAccess.getExternalRule()); }
	 ruleExternal
{ after(grammarAccess.getExternalRule()); } 
	 EOF 
;

// Rule External
ruleExternal 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExternalAccess().getGroup()); }
		(rule__External__Group__0)
		{ after(grammarAccess.getExternalAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleType
entryRuleType
:
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeAccess().getGroup()); }
		(rule__Type__Group__0)
		{ after(grammarAccess.getTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVar
entryRuleVar
:
{ before(grammarAccess.getVarRule()); }
	 ruleVar
{ after(grammarAccess.getVarRule()); } 
	 EOF 
;

// Rule Var
ruleVar 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVarAccess().getGroup()); }
		(rule__Var__Group__0)
		{ after(grammarAccess.getVarAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLet
entryRuleLet
:
{ before(grammarAccess.getLetRule()); }
	 ruleLet
{ after(grammarAccess.getLetRule()); } 
	 EOF 
;

// Rule Let
ruleLet 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLetAccess().getGroup()); }
		(rule__Let__Group__0)
		{ after(grammarAccess.getLetAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePlusMinus
entryRulePlusMinus
:
{ before(grammarAccess.getPlusMinusRule()); }
	 rulePlusMinus
{ after(grammarAccess.getPlusMinusRule()); } 
	 EOF 
;

// Rule PlusMinus
rulePlusMinus 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPlusMinusAccess().getGroup()); }
		(rule__PlusMinus__Group__0)
		{ after(grammarAccess.getPlusMinusAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTerm
entryRuleTerm
:
{ before(grammarAccess.getTermRule()); }
	 ruleTerm
{ after(grammarAccess.getTermRule()); } 
	 EOF 
;

// Rule Term
ruleTerm 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTermAccess().getGroup()); }
		(rule__Term__Group__0)
		{ after(grammarAccess.getTermAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleExternalContent
entryRuleExternalContent
:
{ before(grammarAccess.getExternalContentRule()); }
	 ruleExternalContent
{ after(grammarAccess.getExternalContentRule()); } 
	 EOF 
;

// Rule ExternalContent
ruleExternalContent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getExternalContentAccess().getGroup()); }
		(rule__ExternalContent__Group__0)
		{ after(grammarAccess.getExternalContentAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePrimary
entryRulePrimary
:
{ before(grammarAccess.getPrimaryRule()); }
	 rulePrimary
{ after(grammarAccess.getPrimaryRule()); } 
	 EOF 
;

// Rule Primary
rulePrimary 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPrimaryAccess().getAlternatives()); }
		(rule__Primary__Alternatives)
		{ after(grammarAccess.getPrimaryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleParenthesis
entryRuleParenthesis
:
{ before(grammarAccess.getParenthesisRule()); }
	 ruleParenthesis
{ after(grammarAccess.getParenthesisRule()); } 
	 EOF 
;

// Rule Parenthesis
ruleParenthesis 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getParenthesisAccess().getGroup()); }
		(rule__Parenthesis__Group__0)
		{ after(grammarAccess.getParenthesisAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVariableUse
entryRuleVariableUse
:
{ before(grammarAccess.getVariableUseRule()); }
	 ruleVariableUse
{ after(grammarAccess.getVariableUseRule()); } 
	 EOF 
;

// Rule VariableUse
ruleVariableUse 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVariableUseAccess().getRefAssignment()); }
		(rule__VariableUse__RefAssignment)
		{ after(grammarAccess.getVariableUseAccess().getRefAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getCommaKeyword_1_0()); }
		','
		{ after(grammarAccess.getTypeAccess().getCommaKeyword_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getTypeAccess().getRightParenthesisKeyword_1_1()); }
		')'
		{ after(grammarAccess.getTypeAccess().getRightParenthesisKeyword_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPlusMinusAccess().getGroup_1_0()); }
		(rule__PlusMinus__Group_1_0__0)
		{ after(grammarAccess.getPlusMinusAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getPlusMinusAccess().getGroup_1_1()); }
		(rule__PlusMinus__Group_1_1__0)
		{ after(grammarAccess.getPlusMinusAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTermAccess().getGroup_1_0()); }
		(rule__Term__Group_1_0__0)
		{ after(grammarAccess.getTermAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getTermAccess().getGroup_1_1()); }
		(rule__Term__Group_1_1__0)
		{ after(grammarAccess.getTermAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryAccess().getGroup_0()); }
		(rule__Primary__Group_0__0)
		{ after(grammarAccess.getPrimaryAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getParenthesisParserRuleCall_1()); }
		ruleParenthesis
		{ after(grammarAccess.getPrimaryAccess().getParenthesisParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getVariableUseParserRuleCall_2()); }
		ruleVariableUse
		{ after(grammarAccess.getPrimaryAccess().getVariableUseParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getLetParserRuleCall_3()); }
		ruleLet
		{ after(grammarAccess.getPrimaryAccess().getLetParserRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryAccess().getExternalContentParserRuleCall_4()); }
		ruleExternalContent
		{ after(grammarAccess.getPrimaryAccess().getExternalContentParserRuleCall_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__0__Impl
	rule__Program__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getProgramKeyword_0()); }
	'program'
	{ after(grammarAccess.getProgramAccess().getProgramKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__1__Impl
	rule__Program__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getNameAssignment_1()); }
	(rule__Program__NameAssignment_1)
	{ after(grammarAccess.getProgramAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__2__Impl
	rule__Program__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getExternalsAssignment_2()); }
	(rule__Program__ExternalsAssignment_2)*
	{ after(grammarAccess.getProgramAccess().getExternalsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getExpAssignment_3()); }
	(rule__Program__ExpAssignment_3)*
	{ after(grammarAccess.getProgramAccess().getExpAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__External__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__External__Group__0__Impl
	rule__External__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalAccess().getExternalKeyword_0()); }
	'external'
	{ after(grammarAccess.getExternalAccess().getExternalKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__External__Group__1__Impl
	rule__External__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalAccess().getNameAssignment_1()); }
	(rule__External__NameAssignment_1)
	{ after(grammarAccess.getExternalAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__External__Group__2__Impl
	rule__External__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalAccess().getLeftParenthesisKeyword_2()); }
	'('
	{ after(grammarAccess.getExternalAccess().getLeftParenthesisKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__External__Group__3__Impl
	rule__External__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalAccess().getParenAssignment_3()); }
	(rule__External__ParenAssignment_3)*
	{ after(grammarAccess.getExternalAccess().getParenAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__External__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__External__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalAccess().getRightParenthesisKeyword_4()); }
	(')')?
	{ after(grammarAccess.getExternalAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Type__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__0__Impl
	rule__Type__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getNameAssignment_0()); }
	(rule__Type__NameAssignment_0)
	{ after(grammarAccess.getTypeAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getAlternatives_1()); }
	(rule__Type__Alternatives_1)
	{ after(grammarAccess.getTypeAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Var__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Var__Group__0__Impl
	rule__Var__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarAccess().getVarKeyword_0()); }
	'var'
	{ after(grammarAccess.getVarAccess().getVarKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Var__Group__1__Impl
	rule__Var__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarAccess().getNameAssignment_1()); }
	(rule__Var__NameAssignment_1)
	{ after(grammarAccess.getVarAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Var__Group__2__Impl
	rule__Var__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarAccess().getEqualsSignKeyword_2()); }
	'='
	{ after(grammarAccess.getVarAccess().getEqualsSignKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Var__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVarAccess().getExpressionAssignment_3()); }
	(rule__Var__ExpressionAssignment_3)
	{ after(grammarAccess.getVarAccess().getExpressionAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Let__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__0__Impl
	rule__Let__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getLetKeyword_0()); }
	'let'
	{ after(grammarAccess.getLetAccess().getLetKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__1__Impl
	rule__Let__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getNameAssignment_1()); }
	(rule__Let__NameAssignment_1)
	{ after(grammarAccess.getLetAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__2__Impl
	rule__Let__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getEqualsSignKeyword_2()); }
	'='
	{ after(grammarAccess.getLetAccess().getEqualsSignKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__3__Impl
	rule__Let__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getBindingAssignment_3()); }
	(rule__Let__BindingAssignment_3)
	{ after(grammarAccess.getLetAccess().getBindingAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__4__Impl
	rule__Let__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getInKeyword_4()); }
	'in'
	{ after(grammarAccess.getLetAccess().getInKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__5__Impl
	rule__Let__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getBodyAssignment_5()); }
	(rule__Let__BodyAssignment_5)
	{ after(grammarAccess.getLetAccess().getBodyAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Let__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLetAccess().getEndKeyword_6()); }
	'end'
	{ after(grammarAccess.getLetAccess().getEndKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PlusMinus__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group__0__Impl
	rule__PlusMinus__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getTermParserRuleCall_0()); }
	ruleTerm
	{ after(grammarAccess.getPlusMinusAccess().getTermParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getAlternatives_1()); }
	(rule__PlusMinus__Alternatives_1)*
	{ after(grammarAccess.getPlusMinusAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PlusMinus__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group_1_0__0__Impl
	rule__PlusMinus__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getPlusLeftAction_1_0_0()); }
	()
	{ after(grammarAccess.getPlusMinusAccess().getPlusLeftAction_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group_1_0__1__Impl
	rule__PlusMinus__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getPlusSignKeyword_1_0_1()); }
	'+'
	{ after(grammarAccess.getPlusMinusAccess().getPlusSignKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getRightAssignment_1_0_2()); }
	(rule__PlusMinus__RightAssignment_1_0_2)
	{ after(grammarAccess.getPlusMinusAccess().getRightAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PlusMinus__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group_1_1__0__Impl
	rule__PlusMinus__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getMinusLeftAction_1_1_0()); }
	()
	{ after(grammarAccess.getPlusMinusAccess().getMinusLeftAction_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group_1_1__1__Impl
	rule__PlusMinus__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getHyphenMinusKeyword_1_1_1()); }
	'-'
	{ after(grammarAccess.getPlusMinusAccess().getHyphenMinusKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PlusMinus__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPlusMinusAccess().getRightAssignment_1_1_2()); }
	(rule__PlusMinus__RightAssignment_1_1_2)
	{ after(grammarAccess.getPlusMinusAccess().getRightAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Term__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group__0__Impl
	rule__Term__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getPrimaryParserRuleCall_0()); }
	rulePrimary
	{ after(grammarAccess.getTermAccess().getPrimaryParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getAlternatives_1()); }
	(rule__Term__Alternatives_1)*
	{ after(grammarAccess.getTermAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Term__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group_1_0__0__Impl
	rule__Term__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getMultLeftAction_1_0_0()); }
	()
	{ after(grammarAccess.getTermAccess().getMultLeftAction_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group_1_0__1__Impl
	rule__Term__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getAsteriskKeyword_1_0_1()); }
	'*'
	{ after(grammarAccess.getTermAccess().getAsteriskKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getRightAssignment_1_0_2()); }
	(rule__Term__RightAssignment_1_0_2)
	{ after(grammarAccess.getTermAccess().getRightAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Term__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group_1_1__0__Impl
	rule__Term__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getDivLeftAction_1_1_0()); }
	()
	{ after(grammarAccess.getTermAccess().getDivLeftAction_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group_1_1__1__Impl
	rule__Term__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getSolidusKeyword_1_1_1()); }
	'/'
	{ after(grammarAccess.getTermAccess().getSolidusKeyword_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Term__Group_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTermAccess().getRightAssignment_1_1_2()); }
	(rule__Term__RightAssignment_1_1_2)
	{ after(grammarAccess.getTermAccess().getRightAssignment_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ExternalContent__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group__0__Impl
	rule__ExternalContent__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getNameAssignment_0()); }
	(rule__ExternalContent__NameAssignment_0)
	{ after(grammarAccess.getExternalContentAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group__1__Impl
	rule__ExternalContent__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getExternalContentAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group__2__Impl
	rule__ExternalContent__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getGroup_2()); }
	(rule__ExternalContent__Group_2__0)?
	{ after(grammarAccess.getExternalContentAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getExternalContentAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ExternalContent__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group_2__0__Impl
	rule__ExternalContent__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getParenAssignment_2_0()); }
	(rule__ExternalContent__ParenAssignment_2_0)
	{ after(grammarAccess.getExternalContentAccess().getParenAssignment_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getGroup_2_1()); }
	(rule__ExternalContent__Group_2_1__0)*
	{ after(grammarAccess.getExternalContentAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ExternalContent__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group_2_1__0__Impl
	rule__ExternalContent__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getCommaKeyword_2_1_0()); }
	','
	{ after(grammarAccess.getExternalContentAccess().getCommaKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ExternalContent__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getExternalContentAccess().getParenAssignment_2_1_1()); }
	(rule__ExternalContent__ParenAssignment_2_1_1)
	{ after(grammarAccess.getExternalContentAccess().getParenAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Primary__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_0__0__Impl
	rule__Primary__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getMyNumberAction_0_0()); }
	()
	{ after(grammarAccess.getPrimaryAccess().getMyNumberAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Primary__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryAccess().getValueAssignment_0_1()); }
	(rule__Primary__ValueAssignment_0_1)
	{ after(grammarAccess.getPrimaryAccess().getValueAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Parenthesis__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parenthesis__Group__0__Impl
	rule__Parenthesis__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParenthesisAccess().getParAction_0()); }
	()
	{ after(grammarAccess.getParenthesisAccess().getParAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parenthesis__Group__1__Impl
	rule__Parenthesis__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParenthesisAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getParenthesisAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parenthesis__Group__2__Impl
	rule__Parenthesis__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParenthesisAccess().getParenAssignment_2()); }
	(rule__Parenthesis__ParenAssignment_2)
	{ after(grammarAccess.getParenthesisAccess().getParenAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parenthesis__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParenthesisAccess().getRightParenthesisKeyword_3()); }
	')'
	{ after(grammarAccess.getParenthesisAccess().getRightParenthesisKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Program__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getProgramAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__ExternalsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramAccess().getExternalsExternalParserRuleCall_2_0()); }
		ruleExternal
		{ after(grammarAccess.getProgramAccess().getExternalsExternalParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__ExpAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramAccess().getExpVarParserRuleCall_3_0()); }
		ruleVar
		{ after(grammarAccess.getProgramAccess().getExpVarParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__External__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExternalAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getExternalAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__External__ParenAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExternalAccess().getParenTypeParserRuleCall_3_0()); }
		ruleType
		{ after(grammarAccess.getExternalAccess().getParenTypeParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getTypeAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVarAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getVarAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Var__ExpressionAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVarAccess().getExpressionPlusMinusParserRuleCall_3_0()); }
		rulePlusMinus
		{ after(grammarAccess.getVarAccess().getExpressionPlusMinusParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getLetAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__BindingAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetAccess().getBindingPlusMinusParserRuleCall_3_0()); }
		rulePlusMinus
		{ after(grammarAccess.getLetAccess().getBindingPlusMinusParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Let__BodyAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLetAccess().getBodyPlusMinusParserRuleCall_5_0()); }
		rulePlusMinus
		{ after(grammarAccess.getLetAccess().getBodyPlusMinusParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__RightAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPlusMinusAccess().getRightTermParserRuleCall_1_0_2_0()); }
		ruleTerm
		{ after(grammarAccess.getPlusMinusAccess().getRightTermParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PlusMinus__RightAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPlusMinusAccess().getRightTermParserRuleCall_1_1_2_0()); }
		ruleTerm
		{ after(grammarAccess.getPlusMinusAccess().getRightTermParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__RightAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTermAccess().getRightPrimaryParserRuleCall_1_0_2_0()); }
		rulePrimary
		{ after(grammarAccess.getTermAccess().getRightPrimaryParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Term__RightAssignment_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTermAccess().getRightPrimaryParserRuleCall_1_1_2_0()); }
		rulePrimary
		{ after(grammarAccess.getTermAccess().getRightPrimaryParserRuleCall_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExternalContentAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getExternalContentAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__ParenAssignment_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExternalContentAccess().getParenPlusMinusParserRuleCall_2_0_0()); }
		rulePlusMinus
		{ after(grammarAccess.getExternalContentAccess().getParenPlusMinusParserRuleCall_2_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ExternalContent__ParenAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getExternalContentAccess().getParenPlusMinusParserRuleCall_2_1_1_0()); }
		rulePlusMinus
		{ after(grammarAccess.getExternalContentAccess().getParenPlusMinusParserRuleCall_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Primary__ValueAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryAccess().getValueINTTerminalRuleCall_0_1_0()); }
		RULE_INT
		{ after(grammarAccess.getPrimaryAccess().getValueINTTerminalRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parenthesis__ParenAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParenthesisAccess().getParenPlusMinusParserRuleCall_2_0()); }
		rulePlusMinus
		{ after(grammarAccess.getParenthesisAccess().getParenPlusMinusParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VariableUse__RefAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVariableUseAccess().getRefBindingCrossReference_0()); }
		(
			{ before(grammarAccess.getVariableUseAccess().getRefBindingIDTerminalRuleCall_0_1()); }
			RULE_ID
			{ after(grammarAccess.getVariableUseAccess().getRefBindingIDTerminalRuleCall_0_1()); }
		)
		{ after(grammarAccess.getVariableUseAccess().getRefBindingCrossReference_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
