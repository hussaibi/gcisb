<?xml version="1.0"?>
<Ontology xmlns="http://www.w3.org/2002/07/owl#"
     xml:base="https://w3id.org/pep/"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:xml="http://www.w3.org/XML/1998/namespace"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     ontologyIRI="https://w3id.org/pep/"
     versionIRI="https://w3id.org/pep/pep-1.1">
    <Prefix name="owl" IRI="http://www.w3.org/2002/07/owl#"/>
    <Prefix name="rdf" IRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>
    <Prefix name="xml" IRI="http://www.w3.org/XML/1998/namespace"/>
    <Prefix name="xsd" IRI="http://www.w3.org/2001/XMLSchema#"/>
    <Prefix name="rdfs" IRI="http://www.w3.org/2000/01/rdf-schema#"/>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/dc/terms/modified"/>
        <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#date">2016-05-28</Literal>
    </Annotation>
    <Annotation>
        <AnnotationProperty abbreviatedIRI="owl:versionInfo"/>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">v1.1</Literal>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/dc/terms/title"/>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Procedure Execution ontology.</Literal>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/dc/terms/issued"/>
        <Literal datatypeIRI="http://www.w3.org/2001/XMLSchema#date">2016-07-01</Literal>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/vocab/vann/preferredNamespacePrefix"/>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">pep</Literal>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/vocab/vann/preferredNamespaceUri"/>
        <IRI></IRI>
    </Annotation>
    <Annotation>
        <AnnotationProperty abbreviatedIRI="owl:priorVersion"/>
        <IRI>pep-1.0</IRI>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/dc/terms/creator"/>
        <IRI>http://www.maxime-lefrancois.info/me#</IRI>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/dc/terms/license"/>
        <IRI>https://www.apache.org/licenses/LICENSE-2.0</IRI>
    </Annotation>
    <Annotation>
        <AnnotationProperty IRI="http://purl.org/dc/terms/description"/>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">

The Procedure Execution ontology (PEP) defines `pep:ProcedureExecutor`s that implement `pep:Procedure` methods, and generate `pep:ProcedureExecution` activities. Procedures may be linked to some description of the input and/or the output using object properties `pep:hasInput` and `pep:hasOutput`. Their executions may be linked to some description of the command and/or the result using object properties `pep:hasResult` and `pep:hasCommand`. If the command or the result are simple RDF literals (a typed UNICODE string), then one may use datatype properties `pep:hasSimpleResult` and `pep:hasSimpleCommand` instead. Procedure executions made by a specific procedure executor using a specific procedure can be grouped in containers. Figure below overviews the PEP ontology, and illustrates it with an example.

[![Overview of the PEP Ontology](https://w3id.org/pep/pep-1.1.png)](https://w3id.org/pep/pep-1.1.png).

## PEP generalizes the core concepts of SOSA/SSN

The procedure execution ontology is a simple extension of the [Semantic Sensor Network (SSN) Ontology](https://www.w3.org/TR/vocab-ssn/) and its core, called [Sensor, Observation, Sample, and Actuator (SOSA)](https://www.w3.org/TR/vocab-ssn/). SOSA describe `sosa:Sensor`s that implement `sosa:Procedure`s and make `sosa:Observation`s, which are activities. In parallel to this, it describes `sosa:Actuator`s that implement `sosa:Procedure`s and make `sosa:Actuation`s. The Procedure Execution ontology defines an ontology pattern as a generalization of these two parallel conceptual models, which accounts for at least one third use case: *Web services exposed on the web may be called to trigger the execution of some procedures*.  SOSA/SSN defines input, output, results, and PEP introduces the command. 

We provide an external document to  align with the [the Semantic Sensor Network ontology](https://w3id.org/pep/SSNAlignment-1.1).

## PEP to describe Web services that call lengthy algorithms

PEP can be used to describe [Web containers of Web service executions](http://ci.emse.fr/pep-platform/) one can call in a RESTful way, and that consume and produce documents with a RDF data model. A set of such containers are referred  to as a **Process Execution Platform**. 

We provide an external document to align PEP with the [the RDF Presentation ontology](https://w3id.org/pep/RDFPAlignment-1.1). This  alignment encourages to describe the input and output of Web services using `rdfp:GraphDescription`, and the command and result of their execution using URIs to `rdfp:RDFSource`s.
</Literal>
    </Annotation>
    <Declaration>
        <Class IRI="ProcedureExecutor"/>
    </Declaration>
    <Declaration>
        <Class IRI="ProcedureExecution"/>
    </Declaration>
    <Declaration>
        <DataProperty IRI="hasSimpleCommand"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="implements"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="hasOutput"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="forExecutor"/>
    </Declaration>
    <Declaration>
        <Class IRI="ProcedureExecutionContainer"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="madeBy"/>
    </Declaration>
    <Declaration>
        <DataProperty IRI="hasSimpleResult"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="hasInput"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="forProcedure"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="hasCommand"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="hasResult"/>
    </Declaration>
    <Declaration>
        <Class IRI="Procedure"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="made"/>
    </Declaration>
    <Declaration>
        <ObjectProperty IRI="usedProcedure"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/dc/terms/description"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/dc/terms/title"/>
    </Declaration>
    <Declaration>
        <NamedIndividual IRI=""/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/dc/terms/license"/>
    </Declaration>
    <Declaration>
        <Class IRI="http://purl.org/vocommons/voaf#Vocabulary"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/dc/terms/issued"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/dc/terms/modified"/>
    </Declaration>
    <Declaration>
        <Class IRI="http://xmlns.com/foaf/0.1/Document"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/vocab/vann/preferredNamespaceUri"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/vocab/vann/preferredNamespacePrefix"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://purl.org/dc/terms/creator"/>
    </Declaration>
    <Declaration>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
    </Declaration>
    <DisjointClasses>
        <Class IRI="Procedure"/>
        <Class IRI="ProcedureExecution"/>
    </DisjointClasses>
    <DisjointClasses>
        <Class IRI="Procedure"/>
        <Class IRI="ProcedureExecutor"/>
    </DisjointClasses>
    <DisjointClasses>
        <Class IRI="ProcedureExecution"/>
        <Class IRI="ProcedureExecutor"/>
    </DisjointClasses>
    <ClassAssertion>
        <Class IRI="http://purl.org/vocommons/voaf#Vocabulary"/>
        <NamedIndividual IRI=""/>
    </ClassAssertion>
    <ClassAssertion>
        <Class IRI="http://xmlns.com/foaf/0.1/Document"/>
        <NamedIndividual IRI=""/>
    </ClassAssertion>
    <InverseObjectProperties>
        <ObjectProperty IRI="made"/>
        <ObjectProperty IRI="madeBy"/>
    </InverseObjectProperties>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="forExecutor"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="forProcedure"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="hasCommand"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="hasInput"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="hasOutput"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="hasResult"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="madeBy"/>
    </FunctionalObjectProperty>
    <FunctionalObjectProperty>
        <ObjectProperty IRI="usedProcedure"/>
    </FunctionalObjectProperty>
    <ObjectPropertyDomain>
        <ObjectProperty IRI="forExecutor"/>
        <Class IRI="ProcedureExecutionContainer"/>
    </ObjectPropertyDomain>
    <ObjectPropertyDomain>
        <ObjectProperty IRI="forProcedure"/>
        <Class IRI="ProcedureExecutionContainer"/>
    </ObjectPropertyDomain>
    <ObjectPropertyDomain>
        <ObjectProperty IRI="implements"/>
        <Class IRI="ProcedureExecutor"/>
    </ObjectPropertyDomain>
    <ObjectPropertyDomain>
        <ObjectProperty IRI="made"/>
        <Class IRI="ProcedureExecutor"/>
    </ObjectPropertyDomain>
    <ObjectPropertyDomain>
        <ObjectProperty IRI="madeBy"/>
        <Class IRI="ProcedureExecution"/>
    </ObjectPropertyDomain>
    <ObjectPropertyDomain>
        <ObjectProperty IRI="usedProcedure"/>
        <Class IRI="ProcedureExecution"/>
    </ObjectPropertyDomain>
    <ObjectPropertyRange>
        <ObjectProperty IRI="forExecutor"/>
        <Class IRI="ProcedureExecutor"/>
    </ObjectPropertyRange>
    <ObjectPropertyRange>
        <ObjectProperty IRI="forProcedure"/>
        <Class IRI="Procedure"/>
    </ObjectPropertyRange>
    <ObjectPropertyRange>
        <ObjectProperty IRI="implements"/>
        <Class IRI="Procedure"/>
    </ObjectPropertyRange>
    <ObjectPropertyRange>
        <ObjectProperty IRI="made"/>
        <Class IRI="ProcedureExecution"/>
    </ObjectPropertyRange>
    <ObjectPropertyRange>
        <ObjectProperty IRI="madeBy"/>
        <Class IRI="ProcedureExecutor"/>
    </ObjectPropertyRange>
    <ObjectPropertyRange>
        <ObjectProperty IRI="usedProcedure"/>
        <Class IRI="Procedure"/>
    </ObjectPropertyRange>
    <SubObjectPropertyOf>
        <ObjectPropertyChain>
            <ObjectProperty IRI="made"/>
            <ObjectProperty IRI="usedProcedure"/>
        </ObjectPropertyChain>
        <ObjectProperty IRI="implements"/>
    </SubObjectPropertyOf>
    <SubObjectPropertyOf>
        <ObjectPropertyChain>
            <ObjectInverseOf>
                <ObjectProperty IRI="forExecutor"/>
            </ObjectInverseOf>
            <ObjectProperty IRI="forProcedure"/>
        </ObjectPropertyChain>
        <ObjectProperty IRI="implements"/>
    </SubObjectPropertyOf>
    <FunctionalDataProperty>
        <DataProperty IRI="hasSimpleCommand"/>
    </FunctionalDataProperty>
    <FunctionalDataProperty>
        <DataProperty IRI="hasSimpleResult"/>
    </FunctionalDataProperty>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>Procedure</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">A workflow, protocol, plan, algorithm, or computational method. It explains the steps to be carried out to arrive at reproducible results. A Procedure is re-usable, and might be implemented by several Procedure Executors and used for several Procedure Executions. 

Examples of sub-classes of Procedure include Sensing, Actuating, Planning, Forecasting.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>Procedure</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>Procedure</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Procedure</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>Procedure</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>ProcedureExecution</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Act of carrying out a Procedure. Links to:

- a Procedure Executor to describe what made it and how; 
- the used procedure;
- the command and the result of the procedure execution (simple or complex).
</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>ProcedureExecution</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>ProcedureExecution</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Procedure Execution</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>ProcedureExecution</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>ProcedureExecutionContainer</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">The class of containers of Procedure Executions made by a specific Procedure Executor using a specific Procedure. 

A Procedure Executor Container can be for example a Web container of Procedure Execution resources, where one may operate HTTP POST requests to execute a given procedure.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>ProcedureExecutionContainer</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>ProcedureExecutionContainer</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Procedure Execution Container</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>ProcedureExecutionContainer</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>ProcedureExecutor</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Device, agent (including humans), or software (simulation, web service) involved in, or implementing, a `Procedure`. Examples of sub-classes of Procedure Executor are Sensor, Actuator, Estimator.

A Procedure Executor can be linked to the executions that it made using property `made`. Also, it can be linked to one or more `Procedure`s it implements using property `implements`. A Procedure Executor implements each of the methods used by the `Execution`s it made. 

Other metadata may detail geolocation, vendor, operator, consumed power, etc.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>ProcedureExecutor</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>ProcedureExecutor</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Procedure Executor</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>ProcedureExecutor</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>forExecutor</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure Execution Container to the Procedure Executor that makes the executions it contains.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>forExecutor</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>forExecutor</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">for executor</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>forExecutor</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>forProcedure</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure Execution Container to the Procedure that the executions it contains used.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>forProcedure</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>forProcedure</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">for procedure</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>forProcedure</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>hasCommand</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure Execution to its unique command (a OWL individual).</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>hasCommand</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>hasCommand</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">has command</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>hasCommand</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>hasInput</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure to the (unique) description of its input.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>hasInput</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>hasInput</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">has input</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>hasInput</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>hasOutput</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure to the (unique) description of its output.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>hasOutput</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>hasOutput</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">has output</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>hasOutput</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>hasResult</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure Execution to its unique result (a OWL individual).</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>hasResult</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>hasResult</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">has result</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>hasResult</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>hasSimpleCommand</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure Execution to its unique simple command (a RDFS literal).</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>hasSimpleCommand</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>hasSimpleCommand</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">has simple command</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>hasSimpleCommand</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>hasSimpleResult</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Links a Procedure Execution to its unique simple result (a RDFS literal).</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>hasSimpleResult</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>hasSimpleResult</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">has simple result</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>hasSimpleResult</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>implements</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">A relation between a Procedure Executor and a Procedure it implements.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>implements</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>implements</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">implements</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>implements</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>made</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Relation between a procedure executor and an execution it made.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>made</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>made</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">made</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>made</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>madeBy</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Relation between a Procedure Execution and what made it.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>madeBy</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>madeBy</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">made by</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>madeBy</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:comment"/>
        <IRI>usedProcedure</IRI>
        <Literal xml:lang="en" datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">Relation between a Procedure Execution and the Procedure it used.</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:isDefinedBy"/>
        <IRI>usedProcedure</IRI>
        <IRI></IRI>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty abbreviatedIRI="rdfs:label"/>
        <IRI>usedProcedure</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">used procedure</Literal>
    </AnnotationAssertion>
    <AnnotationAssertion>
        <AnnotationProperty IRI="http://www.w3.org/2003/06/sw-vocab-status/ns#term_status"/>
        <IRI>usedProcedure</IRI>
        <Literal datatypeIRI="http://www.w3.org/1999/02/22-rdf-syntax-ns#PlainLiteral">stable</Literal>
    </AnnotationAssertion>
</Ontology>



<!-- Generated by the OWL API (version 4.2.8.20170104-2310) https://github.com/owlcs/owlapi -->

