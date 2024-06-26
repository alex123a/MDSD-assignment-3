/*
 * generated by Xtext 2.33.0
 */
package dk.sdu.mmmi.mdsd.serializer;

import com.google.inject.Inject;
import dk.sdu.mmmi.mdsd.math.Div;
import dk.sdu.mmmi.mdsd.math.External;
import dk.sdu.mmmi.mdsd.math.ExternalContent;
import dk.sdu.mmmi.mdsd.math.Let;
import dk.sdu.mmmi.mdsd.math.MathPackage;
import dk.sdu.mmmi.mdsd.math.Minus;
import dk.sdu.mmmi.mdsd.math.Mult;
import dk.sdu.mmmi.mdsd.math.MyNumber;
import dk.sdu.mmmi.mdsd.math.Par;
import dk.sdu.mmmi.mdsd.math.Plus;
import dk.sdu.mmmi.mdsd.math.Program;
import dk.sdu.mmmi.mdsd.math.Type;
import dk.sdu.mmmi.mdsd.math.Var;
import dk.sdu.mmmi.mdsd.math.VariableUse;
import dk.sdu.mmmi.mdsd.services.MathGrammarAccess;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;

@SuppressWarnings("all")
public class MathSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private MathGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == MathPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case MathPackage.DIV:
				sequence_Term(context, (Div) semanticObject); 
				return; 
			case MathPackage.EXTERNAL:
				sequence_External(context, (External) semanticObject); 
				return; 
			case MathPackage.EXTERNAL_CONTENT:
				sequence_ExternalContent(context, (ExternalContent) semanticObject); 
				return; 
			case MathPackage.LET:
				sequence_Let(context, (Let) semanticObject); 
				return; 
			case MathPackage.MINUS:
				sequence_PlusMinus(context, (Minus) semanticObject); 
				return; 
			case MathPackage.MULT:
				sequence_Term(context, (Mult) semanticObject); 
				return; 
			case MathPackage.MY_NUMBER:
				sequence_Primary(context, (MyNumber) semanticObject); 
				return; 
			case MathPackage.PAR:
				sequence_Parenthesis(context, (Par) semanticObject); 
				return; 
			case MathPackage.PLUS:
				sequence_PlusMinus(context, (Plus) semanticObject); 
				return; 
			case MathPackage.PROGRAM:
				sequence_Program(context, (Program) semanticObject); 
				return; 
			case MathPackage.TYPE:
				sequence_Type(context, (Type) semanticObject); 
				return; 
			case MathPackage.VAR:
				sequence_Var(context, (Var) semanticObject); 
				return; 
			case MathPackage.VARIABLE_USE:
				sequence_VariableUse(context, (VariableUse) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns ExternalContent
	 *     PlusMinus.Plus_1_0_0 returns ExternalContent
	 *     PlusMinus.Minus_1_1_0 returns ExternalContent
	 *     Term returns ExternalContent
	 *     Term.Mult_1_0_0 returns ExternalContent
	 *     Term.Div_1_1_0 returns ExternalContent
	 *     ExternalContent returns ExternalContent
	 *     Primary returns ExternalContent
	 *
	 * Constraint:
	 *     (name=ID (paren+=PlusMinus paren+=PlusMinus*)?)
	 * </pre>
	 */
	protected void sequence_ExternalContent(ISerializationContext context, ExternalContent semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     External returns External
	 *
	 * Constraint:
	 *     (name=ID paren+=Type*)
	 * </pre>
	 */
	protected void sequence_External(ISerializationContext context, External semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Let returns Let
	 *     PlusMinus returns Let
	 *     PlusMinus.Plus_1_0_0 returns Let
	 *     PlusMinus.Minus_1_1_0 returns Let
	 *     Term returns Let
	 *     Term.Mult_1_0_0 returns Let
	 *     Term.Div_1_1_0 returns Let
	 *     Primary returns Let
	 *     Binding returns Let
	 *
	 * Constraint:
	 *     (name=ID binding=PlusMinus body=PlusMinus)
	 * </pre>
	 */
	protected void sequence_Let(ISerializationContext context, Let semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.BINDING__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.BINDING__NAME));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.LET__BINDING) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.LET__BINDING));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.LET__BODY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.LET__BODY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getLetAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getLetAccess().getBindingPlusMinusParserRuleCall_3_0(), semanticObject.getBinding());
		feeder.accept(grammarAccess.getLetAccess().getBodyPlusMinusParserRuleCall_5_0(), semanticObject.getBody());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns Par
	 *     PlusMinus.Plus_1_0_0 returns Par
	 *     PlusMinus.Minus_1_1_0 returns Par
	 *     Term returns Par
	 *     Term.Mult_1_0_0 returns Par
	 *     Term.Div_1_1_0 returns Par
	 *     Primary returns Par
	 *     Parenthesis returns Par
	 *
	 * Constraint:
	 *     paren=PlusMinus
	 * </pre>
	 */
	protected void sequence_Parenthesis(ISerializationContext context, Par semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.PAR__PAREN) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.PAR__PAREN));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getParenthesisAccess().getParenPlusMinusParserRuleCall_2_0(), semanticObject.getParen());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns Minus
	 *     PlusMinus.Plus_1_0_0 returns Minus
	 *     PlusMinus.Minus_1_1_0 returns Minus
	 *
	 * Constraint:
	 *     (left=PlusMinus_Minus_1_1_0 right=Term)
	 * </pre>
	 */
	protected void sequence_PlusMinus(ISerializationContext context, Minus semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.MINUS__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.MINUS__LEFT));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.MINUS__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.MINUS__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPlusMinusAccess().getMinusLeftAction_1_1_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getPlusMinusAccess().getRightTermParserRuleCall_1_1_2_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns Plus
	 *     PlusMinus.Plus_1_0_0 returns Plus
	 *     PlusMinus.Minus_1_1_0 returns Plus
	 *
	 * Constraint:
	 *     (left=PlusMinus_Plus_1_0_0 right=Term)
	 * </pre>
	 */
	protected void sequence_PlusMinus(ISerializationContext context, Plus semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.PLUS__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.PLUS__LEFT));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.PLUS__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.PLUS__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPlusMinusAccess().getPlusLeftAction_1_0_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getPlusMinusAccess().getRightTermParserRuleCall_1_0_2_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns MyNumber
	 *     PlusMinus.Plus_1_0_0 returns MyNumber
	 *     PlusMinus.Minus_1_1_0 returns MyNumber
	 *     Term returns MyNumber
	 *     Term.Mult_1_0_0 returns MyNumber
	 *     Term.Div_1_1_0 returns MyNumber
	 *     Primary returns MyNumber
	 *
	 * Constraint:
	 *     value=INT
	 * </pre>
	 */
	protected void sequence_Primary(ISerializationContext context, MyNumber semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.MY_NUMBER__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.MY_NUMBER__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPrimaryAccess().getValueINTTerminalRuleCall_0_1_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Program returns Program
	 *
	 * Constraint:
	 *     (name=ID externals+=External* exp+=Var*)
	 * </pre>
	 */
	protected void sequence_Program(ISerializationContext context, Program semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns Div
	 *     PlusMinus.Plus_1_0_0 returns Div
	 *     PlusMinus.Minus_1_1_0 returns Div
	 *     Term returns Div
	 *     Term.Mult_1_0_0 returns Div
	 *     Term.Div_1_1_0 returns Div
	 *
	 * Constraint:
	 *     (left=Term_Div_1_1_0 right=Primary)
	 * </pre>
	 */
	protected void sequence_Term(ISerializationContext context, Div semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.DIV__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.DIV__LEFT));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.DIV__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.DIV__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTermAccess().getDivLeftAction_1_1_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getTermAccess().getRightPrimaryParserRuleCall_1_1_2_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns Mult
	 *     PlusMinus.Plus_1_0_0 returns Mult
	 *     PlusMinus.Minus_1_1_0 returns Mult
	 *     Term returns Mult
	 *     Term.Mult_1_0_0 returns Mult
	 *     Term.Div_1_1_0 returns Mult
	 *
	 * Constraint:
	 *     (left=Term_Mult_1_0_0 right=Primary)
	 * </pre>
	 */
	protected void sequence_Term(ISerializationContext context, Mult semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.MULT__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.MULT__LEFT));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.MULT__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.MULT__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTermAccess().getMultLeftAction_1_0_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getTermAccess().getRightPrimaryParserRuleCall_1_0_2_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Type returns Type
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_Type(ISerializationContext context, Type semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.TYPE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.TYPE__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTypeAccess().getNameIDTerminalRuleCall_0_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Var returns Var
	 *     Binding returns Var
	 *
	 * Constraint:
	 *     (name=ID expression=PlusMinus)
	 * </pre>
	 */
	protected void sequence_Var(ISerializationContext context, Var semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.BINDING__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.BINDING__NAME));
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.VAR__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.VAR__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getVarAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getVarAccess().getExpressionPlusMinusParserRuleCall_3_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PlusMinus returns VariableUse
	 *     PlusMinus.Plus_1_0_0 returns VariableUse
	 *     PlusMinus.Minus_1_1_0 returns VariableUse
	 *     Term returns VariableUse
	 *     Term.Mult_1_0_0 returns VariableUse
	 *     Term.Div_1_1_0 returns VariableUse
	 *     Primary returns VariableUse
	 *     VariableUse returns VariableUse
	 *
	 * Constraint:
	 *     ref=[Binding|ID]
	 * </pre>
	 */
	protected void sequence_VariableUse(ISerializationContext context, VariableUse semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MathPackage.Literals.VARIABLE_USE__REF) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MathPackage.Literals.VARIABLE_USE__REF));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getVariableUseAccess().getRefBindingIDTerminalRuleCall_0_1(), semanticObject.eGet(MathPackage.Literals.VARIABLE_USE__REF, false));
		feeder.finish();
	}
	
	
}
