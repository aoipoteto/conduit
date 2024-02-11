# frozen_string_literal: true
=begin
This file is generated by the templates/template.rb script and should not be
modified manually. See templates/lib/prism/dsl.rb.erb
if you are looking to modify the template
=end

module Prism
  # The DSL module provides a set of methods that can be used to create prism
  # nodes in a more concise manner. For example, instead of writing:
  #
  #     source = Prism::Source.new("[1]")
  #
  #     Prism::ArrayNode.new(
  #       [
  #         Prism::IntegerNode.new(
  #           Prism::IntegerBaseFlags::DECIMAL,
  #           Prism::Location.new(source, 1, 1),
  #         )
  #       ],
  #       Prism::Location.new(source, 0, 1),
  #       Prism::Location.new(source, 2, 1)
  #     )
  #
  # you could instead write:
  #
  #     source = Prism::Source.new("[1]")
  #
  #     ArrayNode(
  #       IntegerNode(Prism::IntegerBaseFlags::DECIMAL, Location(source, 1, 1))),
  #       Location(source, 0, 1),
  #       Location(source, 2, 1)
  #     )
  #
  # This is mostly helpful in the context of writing tests, but can also be used
  # to generate trees programmatically.
  module DSL
    private

    # Create a new Location object
    def Location(source = nil, start_offset = 0, length = 0)
      Location.new(source, start_offset, length)
    end

    # Create a new AliasGlobalVariableNode node
    def AliasGlobalVariableNode(new_name, old_name, keyword_loc, location = Location())
      AliasGlobalVariableNode.new(new_name, old_name, keyword_loc, location)
    end

    # Create a new AliasMethodNode node
    def AliasMethodNode(new_name, old_name, keyword_loc, location = Location())
      AliasMethodNode.new(new_name, old_name, keyword_loc, location)
    end

    # Create a new AlternationPatternNode node
    def AlternationPatternNode(left, right, operator_loc, location = Location())
      AlternationPatternNode.new(left, right, operator_loc, location)
    end

    # Create a new AndNode node
    def AndNode(left, right, operator_loc, location = Location())
      AndNode.new(left, right, operator_loc, location)
    end

    # Create a new ArgumentsNode node
    def ArgumentsNode(flags, arguments, location = Location())
      ArgumentsNode.new(flags, arguments, location)
    end

    # Create a new ArrayNode node
    def ArrayNode(flags, elements, opening_loc, closing_loc, location = Location())
      ArrayNode.new(flags, elements, opening_loc, closing_loc, location)
    end

    # Create a new ArrayPatternNode node
    def ArrayPatternNode(constant, requireds, rest, posts, opening_loc, closing_loc, location = Location())
      ArrayPatternNode.new(constant, requireds, rest, posts, opening_loc, closing_loc, location)
    end

    # Create a new AssocNode node
    def AssocNode(key, value, operator_loc, location = Location())
      AssocNode.new(key, value, operator_loc, location)
    end

    # Create a new AssocSplatNode node
    def AssocSplatNode(value, operator_loc, location = Location())
      AssocSplatNode.new(value, operator_loc, location)
    end

    # Create a new BackReferenceReadNode node
    def BackReferenceReadNode(name, location = Location())
      BackReferenceReadNode.new(name, location)
    end

    # Create a new BeginNode node
    def BeginNode(begin_keyword_loc, statements, rescue_clause, else_clause, ensure_clause, end_keyword_loc, location = Location())
      BeginNode.new(begin_keyword_loc, statements, rescue_clause, else_clause, ensure_clause, end_keyword_loc, location)
    end

    # Create a new BlockArgumentNode node
    def BlockArgumentNode(expression, operator_loc, location = Location())
      BlockArgumentNode.new(expression, operator_loc, location)
    end

    # Create a new BlockLocalVariableNode node
    def BlockLocalVariableNode(flags, name, location = Location())
      BlockLocalVariableNode.new(flags, name, location)
    end

    # Create a new BlockNode node
    def BlockNode(locals, parameters, body, opening_loc, closing_loc, location = Location())
      BlockNode.new(locals, parameters, body, opening_loc, closing_loc, location)
    end

    # Create a new BlockParameterNode node
    def BlockParameterNode(flags, name, name_loc, operator_loc, location = Location())
      BlockParameterNode.new(flags, name, name_loc, operator_loc, location)
    end

    # Create a new BlockParametersNode node
    def BlockParametersNode(parameters, locals, opening_loc, closing_loc, location = Location())
      BlockParametersNode.new(parameters, locals, opening_loc, closing_loc, location)
    end

    # Create a new BreakNode node
    def BreakNode(arguments, keyword_loc, location = Location())
      BreakNode.new(arguments, keyword_loc, location)
    end

    # Create a new CallAndWriteNode node
    def CallAndWriteNode(flags, receiver, call_operator_loc, message_loc, read_name, write_name, operator_loc, value, location = Location())
      CallAndWriteNode.new(flags, receiver, call_operator_loc, message_loc, read_name, write_name, operator_loc, value, location)
    end

    # Create a new CallNode node
    def CallNode(flags, receiver, call_operator_loc, name, message_loc, opening_loc, arguments, closing_loc, block, location = Location())
      CallNode.new(flags, receiver, call_operator_loc, name, message_loc, opening_loc, arguments, closing_loc, block, location)
    end

    # Create a new CallOperatorWriteNode node
    def CallOperatorWriteNode(flags, receiver, call_operator_loc, message_loc, read_name, write_name, operator, operator_loc, value, location = Location())
      CallOperatorWriteNode.new(flags, receiver, call_operator_loc, message_loc, read_name, write_name, operator, operator_loc, value, location)
    end

    # Create a new CallOrWriteNode node
    def CallOrWriteNode(flags, receiver, call_operator_loc, message_loc, read_name, write_name, operator_loc, value, location = Location())
      CallOrWriteNode.new(flags, receiver, call_operator_loc, message_loc, read_name, write_name, operator_loc, value, location)
    end

    # Create a new CallTargetNode node
    def CallTargetNode(flags, receiver, call_operator_loc, name, message_loc, location = Location())
      CallTargetNode.new(flags, receiver, call_operator_loc, name, message_loc, location)
    end

    # Create a new CapturePatternNode node
    def CapturePatternNode(value, target, operator_loc, location = Location())
      CapturePatternNode.new(value, target, operator_loc, location)
    end

    # Create a new CaseMatchNode node
    def CaseMatchNode(predicate, conditions, consequent, case_keyword_loc, end_keyword_loc, location = Location())
      CaseMatchNode.new(predicate, conditions, consequent, case_keyword_loc, end_keyword_loc, location)
    end

    # Create a new CaseNode node
    def CaseNode(predicate, conditions, consequent, case_keyword_loc, end_keyword_loc, location = Location())
      CaseNode.new(predicate, conditions, consequent, case_keyword_loc, end_keyword_loc, location)
    end

    # Create a new ClassNode node
    def ClassNode(locals, class_keyword_loc, constant_path, inheritance_operator_loc, superclass, body, end_keyword_loc, name, location = Location())
      ClassNode.new(locals, class_keyword_loc, constant_path, inheritance_operator_loc, superclass, body, end_keyword_loc, name, location)
    end

    # Create a new ClassVariableAndWriteNode node
    def ClassVariableAndWriteNode(name, name_loc, operator_loc, value, location = Location())
      ClassVariableAndWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new ClassVariableOperatorWriteNode node
    def ClassVariableOperatorWriteNode(name, name_loc, operator_loc, value, operator, location = Location())
      ClassVariableOperatorWriteNode.new(name, name_loc, operator_loc, value, operator, location)
    end

    # Create a new ClassVariableOrWriteNode node
    def ClassVariableOrWriteNode(name, name_loc, operator_loc, value, location = Location())
      ClassVariableOrWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new ClassVariableReadNode node
    def ClassVariableReadNode(name, location = Location())
      ClassVariableReadNode.new(name, location)
    end

    # Create a new ClassVariableTargetNode node
    def ClassVariableTargetNode(name, location = Location())
      ClassVariableTargetNode.new(name, location)
    end

    # Create a new ClassVariableWriteNode node
    def ClassVariableWriteNode(name, name_loc, value, operator_loc, location = Location())
      ClassVariableWriteNode.new(name, name_loc, value, operator_loc, location)
    end

    # Create a new ConstantAndWriteNode node
    def ConstantAndWriteNode(name, name_loc, operator_loc, value, location = Location())
      ConstantAndWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new ConstantOperatorWriteNode node
    def ConstantOperatorWriteNode(name, name_loc, operator_loc, value, operator, location = Location())
      ConstantOperatorWriteNode.new(name, name_loc, operator_loc, value, operator, location)
    end

    # Create a new ConstantOrWriteNode node
    def ConstantOrWriteNode(name, name_loc, operator_loc, value, location = Location())
      ConstantOrWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new ConstantPathAndWriteNode node
    def ConstantPathAndWriteNode(target, operator_loc, value, location = Location())
      ConstantPathAndWriteNode.new(target, operator_loc, value, location)
    end

    # Create a new ConstantPathNode node
    def ConstantPathNode(parent, child, delimiter_loc, location = Location())
      ConstantPathNode.new(parent, child, delimiter_loc, location)
    end

    # Create a new ConstantPathOperatorWriteNode node
    def ConstantPathOperatorWriteNode(target, operator_loc, value, operator, location = Location())
      ConstantPathOperatorWriteNode.new(target, operator_loc, value, operator, location)
    end

    # Create a new ConstantPathOrWriteNode node
    def ConstantPathOrWriteNode(target, operator_loc, value, location = Location())
      ConstantPathOrWriteNode.new(target, operator_loc, value, location)
    end

    # Create a new ConstantPathTargetNode node
    def ConstantPathTargetNode(parent, child, delimiter_loc, location = Location())
      ConstantPathTargetNode.new(parent, child, delimiter_loc, location)
    end

    # Create a new ConstantPathWriteNode node
    def ConstantPathWriteNode(target, operator_loc, value, location = Location())
      ConstantPathWriteNode.new(target, operator_loc, value, location)
    end

    # Create a new ConstantReadNode node
    def ConstantReadNode(name, location = Location())
      ConstantReadNode.new(name, location)
    end

    # Create a new ConstantTargetNode node
    def ConstantTargetNode(name, location = Location())
      ConstantTargetNode.new(name, location)
    end

    # Create a new ConstantWriteNode node
    def ConstantWriteNode(name, name_loc, value, operator_loc, location = Location())
      ConstantWriteNode.new(name, name_loc, value, operator_loc, location)
    end

    # Create a new DefNode node
    def DefNode(name, name_loc, receiver, parameters, body, locals, def_keyword_loc, operator_loc, lparen_loc, rparen_loc, equal_loc, end_keyword_loc, location = Location())
      DefNode.new(name, name_loc, receiver, parameters, body, locals, def_keyword_loc, operator_loc, lparen_loc, rparen_loc, equal_loc, end_keyword_loc, location)
    end

    # Create a new DefinedNode node
    def DefinedNode(lparen_loc, value, rparen_loc, keyword_loc, location = Location())
      DefinedNode.new(lparen_loc, value, rparen_loc, keyword_loc, location)
    end

    # Create a new ElseNode node
    def ElseNode(else_keyword_loc, statements, end_keyword_loc, location = Location())
      ElseNode.new(else_keyword_loc, statements, end_keyword_loc, location)
    end

    # Create a new EmbeddedStatementsNode node
    def EmbeddedStatementsNode(opening_loc, statements, closing_loc, location = Location())
      EmbeddedStatementsNode.new(opening_loc, statements, closing_loc, location)
    end

    # Create a new EmbeddedVariableNode node
    def EmbeddedVariableNode(operator_loc, variable, location = Location())
      EmbeddedVariableNode.new(operator_loc, variable, location)
    end

    # Create a new EnsureNode node
    def EnsureNode(ensure_keyword_loc, statements, end_keyword_loc, location = Location())
      EnsureNode.new(ensure_keyword_loc, statements, end_keyword_loc, location)
    end

    # Create a new FalseNode node
    def FalseNode(location = Location())
      FalseNode.new(location)
    end

    # Create a new FindPatternNode node
    def FindPatternNode(constant, left, requireds, right, opening_loc, closing_loc, location = Location())
      FindPatternNode.new(constant, left, requireds, right, opening_loc, closing_loc, location)
    end

    # Create a new FlipFlopNode node
    def FlipFlopNode(flags, left, right, operator_loc, location = Location())
      FlipFlopNode.new(flags, left, right, operator_loc, location)
    end

    # Create a new FloatNode node
    def FloatNode(location = Location())
      FloatNode.new(location)
    end

    # Create a new ForNode node
    def ForNode(index, collection, statements, for_keyword_loc, in_keyword_loc, do_keyword_loc, end_keyword_loc, location = Location())
      ForNode.new(index, collection, statements, for_keyword_loc, in_keyword_loc, do_keyword_loc, end_keyword_loc, location)
    end

    # Create a new ForwardingArgumentsNode node
    def ForwardingArgumentsNode(location = Location())
      ForwardingArgumentsNode.new(location)
    end

    # Create a new ForwardingParameterNode node
    def ForwardingParameterNode(location = Location())
      ForwardingParameterNode.new(location)
    end

    # Create a new ForwardingSuperNode node
    def ForwardingSuperNode(block, location = Location())
      ForwardingSuperNode.new(block, location)
    end

    # Create a new GlobalVariableAndWriteNode node
    def GlobalVariableAndWriteNode(name, name_loc, operator_loc, value, location = Location())
      GlobalVariableAndWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new GlobalVariableOperatorWriteNode node
    def GlobalVariableOperatorWriteNode(name, name_loc, operator_loc, value, operator, location = Location())
      GlobalVariableOperatorWriteNode.new(name, name_loc, operator_loc, value, operator, location)
    end

    # Create a new GlobalVariableOrWriteNode node
    def GlobalVariableOrWriteNode(name, name_loc, operator_loc, value, location = Location())
      GlobalVariableOrWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new GlobalVariableReadNode node
    def GlobalVariableReadNode(name, location = Location())
      GlobalVariableReadNode.new(name, location)
    end

    # Create a new GlobalVariableTargetNode node
    def GlobalVariableTargetNode(name, location = Location())
      GlobalVariableTargetNode.new(name, location)
    end

    # Create a new GlobalVariableWriteNode node
    def GlobalVariableWriteNode(name, name_loc, value, operator_loc, location = Location())
      GlobalVariableWriteNode.new(name, name_loc, value, operator_loc, location)
    end

    # Create a new HashNode node
    def HashNode(opening_loc, elements, closing_loc, location = Location())
      HashNode.new(opening_loc, elements, closing_loc, location)
    end

    # Create a new HashPatternNode node
    def HashPatternNode(constant, elements, rest, opening_loc, closing_loc, location = Location())
      HashPatternNode.new(constant, elements, rest, opening_loc, closing_loc, location)
    end

    # Create a new IfNode node
    def IfNode(if_keyword_loc, predicate, then_keyword_loc, statements, consequent, end_keyword_loc, location = Location())
      IfNode.new(if_keyword_loc, predicate, then_keyword_loc, statements, consequent, end_keyword_loc, location)
    end

    # Create a new ImaginaryNode node
    def ImaginaryNode(numeric, location = Location())
      ImaginaryNode.new(numeric, location)
    end

    # Create a new ImplicitNode node
    def ImplicitNode(value, location = Location())
      ImplicitNode.new(value, location)
    end

    # Create a new ImplicitRestNode node
    def ImplicitRestNode(location = Location())
      ImplicitRestNode.new(location)
    end

    # Create a new InNode node
    def InNode(pattern, statements, in_loc, then_loc, location = Location())
      InNode.new(pattern, statements, in_loc, then_loc, location)
    end

    # Create a new IndexAndWriteNode node
    def IndexAndWriteNode(flags, receiver, call_operator_loc, opening_loc, arguments, closing_loc, block, operator_loc, value, location = Location())
      IndexAndWriteNode.new(flags, receiver, call_operator_loc, opening_loc, arguments, closing_loc, block, operator_loc, value, location)
    end

    # Create a new IndexOperatorWriteNode node
    def IndexOperatorWriteNode(flags, receiver, call_operator_loc, opening_loc, arguments, closing_loc, block, operator, operator_loc, value, location = Location())
      IndexOperatorWriteNode.new(flags, receiver, call_operator_loc, opening_loc, arguments, closing_loc, block, operator, operator_loc, value, location)
    end

    # Create a new IndexOrWriteNode node
    def IndexOrWriteNode(flags, receiver, call_operator_loc, opening_loc, arguments, closing_loc, block, operator_loc, value, location = Location())
      IndexOrWriteNode.new(flags, receiver, call_operator_loc, opening_loc, arguments, closing_loc, block, operator_loc, value, location)
    end

    # Create a new IndexTargetNode node
    def IndexTargetNode(flags, receiver, opening_loc, arguments, closing_loc, block, location = Location())
      IndexTargetNode.new(flags, receiver, opening_loc, arguments, closing_loc, block, location)
    end

    # Create a new InstanceVariableAndWriteNode node
    def InstanceVariableAndWriteNode(name, name_loc, operator_loc, value, location = Location())
      InstanceVariableAndWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new InstanceVariableOperatorWriteNode node
    def InstanceVariableOperatorWriteNode(name, name_loc, operator_loc, value, operator, location = Location())
      InstanceVariableOperatorWriteNode.new(name, name_loc, operator_loc, value, operator, location)
    end

    # Create a new InstanceVariableOrWriteNode node
    def InstanceVariableOrWriteNode(name, name_loc, operator_loc, value, location = Location())
      InstanceVariableOrWriteNode.new(name, name_loc, operator_loc, value, location)
    end

    # Create a new InstanceVariableReadNode node
    def InstanceVariableReadNode(name, location = Location())
      InstanceVariableReadNode.new(name, location)
    end

    # Create a new InstanceVariableTargetNode node
    def InstanceVariableTargetNode(name, location = Location())
      InstanceVariableTargetNode.new(name, location)
    end

    # Create a new InstanceVariableWriteNode node
    def InstanceVariableWriteNode(name, name_loc, value, operator_loc, location = Location())
      InstanceVariableWriteNode.new(name, name_loc, value, operator_loc, location)
    end

    # Create a new IntegerNode node
    def IntegerNode(flags, location = Location())
      IntegerNode.new(flags, location)
    end

    # Create a new InterpolatedMatchLastLineNode node
    def InterpolatedMatchLastLineNode(flags, opening_loc, parts, closing_loc, location = Location())
      InterpolatedMatchLastLineNode.new(flags, opening_loc, parts, closing_loc, location)
    end

    # Create a new InterpolatedRegularExpressionNode node
    def InterpolatedRegularExpressionNode(flags, opening_loc, parts, closing_loc, location = Location())
      InterpolatedRegularExpressionNode.new(flags, opening_loc, parts, closing_loc, location)
    end

    # Create a new InterpolatedStringNode node
    def InterpolatedStringNode(opening_loc, parts, closing_loc, location = Location())
      InterpolatedStringNode.new(opening_loc, parts, closing_loc, location)
    end

    # Create a new InterpolatedSymbolNode node
    def InterpolatedSymbolNode(opening_loc, parts, closing_loc, location = Location())
      InterpolatedSymbolNode.new(opening_loc, parts, closing_loc, location)
    end

    # Create a new InterpolatedXStringNode node
    def InterpolatedXStringNode(opening_loc, parts, closing_loc, location = Location())
      InterpolatedXStringNode.new(opening_loc, parts, closing_loc, location)
    end

    # Create a new KeywordHashNode node
    def KeywordHashNode(flags, elements, location = Location())
      KeywordHashNode.new(flags, elements, location)
    end

    # Create a new KeywordRestParameterNode node
    def KeywordRestParameterNode(flags, name, name_loc, operator_loc, location = Location())
      KeywordRestParameterNode.new(flags, name, name_loc, operator_loc, location)
    end

    # Create a new LambdaNode node
    def LambdaNode(locals, operator_loc, opening_loc, closing_loc, parameters, body, location = Location())
      LambdaNode.new(locals, operator_loc, opening_loc, closing_loc, parameters, body, location)
    end

    # Create a new LocalVariableAndWriteNode node
    def LocalVariableAndWriteNode(name_loc, operator_loc, value, name, depth, location = Location())
      LocalVariableAndWriteNode.new(name_loc, operator_loc, value, name, depth, location)
    end

    # Create a new LocalVariableOperatorWriteNode node
    def LocalVariableOperatorWriteNode(name_loc, operator_loc, value, name, operator, depth, location = Location())
      LocalVariableOperatorWriteNode.new(name_loc, operator_loc, value, name, operator, depth, location)
    end

    # Create a new LocalVariableOrWriteNode node
    def LocalVariableOrWriteNode(name_loc, operator_loc, value, name, depth, location = Location())
      LocalVariableOrWriteNode.new(name_loc, operator_loc, value, name, depth, location)
    end

    # Create a new LocalVariableReadNode node
    def LocalVariableReadNode(name, depth, location = Location())
      LocalVariableReadNode.new(name, depth, location)
    end

    # Create a new LocalVariableTargetNode node
    def LocalVariableTargetNode(name, depth, location = Location())
      LocalVariableTargetNode.new(name, depth, location)
    end

    # Create a new LocalVariableWriteNode node
    def LocalVariableWriteNode(name, depth, name_loc, value, operator_loc, location = Location())
      LocalVariableWriteNode.new(name, depth, name_loc, value, operator_loc, location)
    end

    # Create a new MatchLastLineNode node
    def MatchLastLineNode(flags, opening_loc, content_loc, closing_loc, unescaped, location = Location())
      MatchLastLineNode.new(flags, opening_loc, content_loc, closing_loc, unescaped, location)
    end

    # Create a new MatchPredicateNode node
    def MatchPredicateNode(value, pattern, operator_loc, location = Location())
      MatchPredicateNode.new(value, pattern, operator_loc, location)
    end

    # Create a new MatchRequiredNode node
    def MatchRequiredNode(value, pattern, operator_loc, location = Location())
      MatchRequiredNode.new(value, pattern, operator_loc, location)
    end

    # Create a new MatchWriteNode node
    def MatchWriteNode(call, targets, location = Location())
      MatchWriteNode.new(call, targets, location)
    end

    # Create a new MissingNode node
    def MissingNode(location = Location())
      MissingNode.new(location)
    end

    # Create a new ModuleNode node
    def ModuleNode(locals, module_keyword_loc, constant_path, body, end_keyword_loc, name, location = Location())
      ModuleNode.new(locals, module_keyword_loc, constant_path, body, end_keyword_loc, name, location)
    end

    # Create a new MultiTargetNode node
    def MultiTargetNode(lefts, rest, rights, lparen_loc, rparen_loc, location = Location())
      MultiTargetNode.new(lefts, rest, rights, lparen_loc, rparen_loc, location)
    end

    # Create a new MultiWriteNode node
    def MultiWriteNode(lefts, rest, rights, lparen_loc, rparen_loc, operator_loc, value, location = Location())
      MultiWriteNode.new(lefts, rest, rights, lparen_loc, rparen_loc, operator_loc, value, location)
    end

    # Create a new NextNode node
    def NextNode(arguments, keyword_loc, location = Location())
      NextNode.new(arguments, keyword_loc, location)
    end

    # Create a new NilNode node
    def NilNode(location = Location())
      NilNode.new(location)
    end

    # Create a new NoKeywordsParameterNode node
    def NoKeywordsParameterNode(operator_loc, keyword_loc, location = Location())
      NoKeywordsParameterNode.new(operator_loc, keyword_loc, location)
    end

    # Create a new NumberedParametersNode node
    def NumberedParametersNode(maximum, location = Location())
      NumberedParametersNode.new(maximum, location)
    end

    # Create a new NumberedReferenceReadNode node
    def NumberedReferenceReadNode(number, location = Location())
      NumberedReferenceReadNode.new(number, location)
    end

    # Create a new OptionalKeywordParameterNode node
    def OptionalKeywordParameterNode(flags, name, name_loc, value, location = Location())
      OptionalKeywordParameterNode.new(flags, name, name_loc, value, location)
    end

    # Create a new OptionalParameterNode node
    def OptionalParameterNode(flags, name, name_loc, operator_loc, value, location = Location())
      OptionalParameterNode.new(flags, name, name_loc, operator_loc, value, location)
    end

    # Create a new OrNode node
    def OrNode(left, right, operator_loc, location = Location())
      OrNode.new(left, right, operator_loc, location)
    end

    # Create a new ParametersNode node
    def ParametersNode(requireds, optionals, rest, posts, keywords, keyword_rest, block, location = Location())
      ParametersNode.new(requireds, optionals, rest, posts, keywords, keyword_rest, block, location)
    end

    # Create a new ParenthesesNode node
    def ParenthesesNode(body, opening_loc, closing_loc, location = Location())
      ParenthesesNode.new(body, opening_loc, closing_loc, location)
    end

    # Create a new PinnedExpressionNode node
    def PinnedExpressionNode(expression, operator_loc, lparen_loc, rparen_loc, location = Location())
      PinnedExpressionNode.new(expression, operator_loc, lparen_loc, rparen_loc, location)
    end

    # Create a new PinnedVariableNode node
    def PinnedVariableNode(variable, operator_loc, location = Location())
      PinnedVariableNode.new(variable, operator_loc, location)
    end

    # Create a new PostExecutionNode node
    def PostExecutionNode(statements, keyword_loc, opening_loc, closing_loc, location = Location())
      PostExecutionNode.new(statements, keyword_loc, opening_loc, closing_loc, location)
    end

    # Create a new PreExecutionNode node
    def PreExecutionNode(statements, keyword_loc, opening_loc, closing_loc, location = Location())
      PreExecutionNode.new(statements, keyword_loc, opening_loc, closing_loc, location)
    end

    # Create a new ProgramNode node
    def ProgramNode(locals, statements, location = Location())
      ProgramNode.new(locals, statements, location)
    end

    # Create a new RangeNode node
    def RangeNode(flags, left, right, operator_loc, location = Location())
      RangeNode.new(flags, left, right, operator_loc, location)
    end

    # Create a new RationalNode node
    def RationalNode(numeric, location = Location())
      RationalNode.new(numeric, location)
    end

    # Create a new RedoNode node
    def RedoNode(location = Location())
      RedoNode.new(location)
    end

    # Create a new RegularExpressionNode node
    def RegularExpressionNode(flags, opening_loc, content_loc, closing_loc, unescaped, location = Location())
      RegularExpressionNode.new(flags, opening_loc, content_loc, closing_loc, unescaped, location)
    end

    # Create a new RequiredKeywordParameterNode node
    def RequiredKeywordParameterNode(flags, name, name_loc, location = Location())
      RequiredKeywordParameterNode.new(flags, name, name_loc, location)
    end

    # Create a new RequiredParameterNode node
    def RequiredParameterNode(flags, name, location = Location())
      RequiredParameterNode.new(flags, name, location)
    end

    # Create a new RescueModifierNode node
    def RescueModifierNode(expression, keyword_loc, rescue_expression, location = Location())
      RescueModifierNode.new(expression, keyword_loc, rescue_expression, location)
    end

    # Create a new RescueNode node
    def RescueNode(keyword_loc, exceptions, operator_loc, reference, statements, consequent, location = Location())
      RescueNode.new(keyword_loc, exceptions, operator_loc, reference, statements, consequent, location)
    end

    # Create a new RestParameterNode node
    def RestParameterNode(flags, name, name_loc, operator_loc, location = Location())
      RestParameterNode.new(flags, name, name_loc, operator_loc, location)
    end

    # Create a new RetryNode node
    def RetryNode(location = Location())
      RetryNode.new(location)
    end

    # Create a new ReturnNode node
    def ReturnNode(keyword_loc, arguments, location = Location())
      ReturnNode.new(keyword_loc, arguments, location)
    end

    # Create a new SelfNode node
    def SelfNode(location = Location())
      SelfNode.new(location)
    end

    # Create a new SingletonClassNode node
    def SingletonClassNode(locals, class_keyword_loc, operator_loc, expression, body, end_keyword_loc, location = Location())
      SingletonClassNode.new(locals, class_keyword_loc, operator_loc, expression, body, end_keyword_loc, location)
    end

    # Create a new SourceEncodingNode node
    def SourceEncodingNode(location = Location())
      SourceEncodingNode.new(location)
    end

    # Create a new SourceFileNode node
    def SourceFileNode(filepath, location = Location())
      SourceFileNode.new(filepath, location)
    end

    # Create a new SourceLineNode node
    def SourceLineNode(location = Location())
      SourceLineNode.new(location)
    end

    # Create a new SplatNode node
    def SplatNode(operator_loc, expression, location = Location())
      SplatNode.new(operator_loc, expression, location)
    end

    # Create a new StatementsNode node
    def StatementsNode(body, location = Location())
      StatementsNode.new(body, location)
    end

    # Create a new StringNode node
    def StringNode(flags, opening_loc, content_loc, closing_loc, unescaped, location = Location())
      StringNode.new(flags, opening_loc, content_loc, closing_loc, unescaped, location)
    end

    # Create a new SuperNode node
    def SuperNode(keyword_loc, lparen_loc, arguments, rparen_loc, block, location = Location())
      SuperNode.new(keyword_loc, lparen_loc, arguments, rparen_loc, block, location)
    end

    # Create a new SymbolNode node
    def SymbolNode(flags, opening_loc, value_loc, closing_loc, unescaped, location = Location())
      SymbolNode.new(flags, opening_loc, value_loc, closing_loc, unescaped, location)
    end

    # Create a new TrueNode node
    def TrueNode(location = Location())
      TrueNode.new(location)
    end

    # Create a new UndefNode node
    def UndefNode(names, keyword_loc, location = Location())
      UndefNode.new(names, keyword_loc, location)
    end

    # Create a new UnlessNode node
    def UnlessNode(keyword_loc, predicate, then_keyword_loc, statements, consequent, end_keyword_loc, location = Location())
      UnlessNode.new(keyword_loc, predicate, then_keyword_loc, statements, consequent, end_keyword_loc, location)
    end

    # Create a new UntilNode node
    def UntilNode(flags, keyword_loc, closing_loc, predicate, statements, location = Location())
      UntilNode.new(flags, keyword_loc, closing_loc, predicate, statements, location)
    end

    # Create a new WhenNode node
    def WhenNode(keyword_loc, conditions, statements, location = Location())
      WhenNode.new(keyword_loc, conditions, statements, location)
    end

    # Create a new WhileNode node
    def WhileNode(flags, keyword_loc, closing_loc, predicate, statements, location = Location())
      WhileNode.new(flags, keyword_loc, closing_loc, predicate, statements, location)
    end

    # Create a new XStringNode node
    def XStringNode(flags, opening_loc, content_loc, closing_loc, unescaped, location = Location())
      XStringNode.new(flags, opening_loc, content_loc, closing_loc, unescaped, location)
    end

    # Create a new YieldNode node
    def YieldNode(keyword_loc, lparen_loc, arguments, rparen_loc, location = Location())
      YieldNode.new(keyword_loc, lparen_loc, arguments, rparen_loc, location)
    end
  end
end
