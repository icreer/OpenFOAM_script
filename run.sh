#! /bin/bash

mesh_conversion_option () {
    read -p"
    0. None
    1. ansys to Foam
    2. CFX 4 to Foam
    3. dat to Foam
    4. fluent 3D Mesh to Foam
    5. fluent Mesh to Foam
    6. gambit to Foam
    7. gmsh to Foam
    8. ideas Unv to Foam
    9. kiva to Foam
    10. msh to Foam
    11. netgenNeutral to Foam
    12. Optional/ccm26 to Foam
    13. plot3d to Foam
    14. samm to Foam
    15. star3 to Foam
    16. star4 to Foam
    17. tetgen to Foam
    18. vtkUnstructured to Foam
    Pick the one you need [0-18]:" meshc
    
}

mesh_conversion () {
    mesh_conversion_option

    if [["$meshc" -eq 1]]; then
        ansysToFoam
    elif [["$meshc" -eq 2]]; then
        cfx4ToFoam
    elif [["$meshc" -eq 3]]; then
        datToFoam
    elif [["$meshc" -eq 4]]; then
        fluent3DMeshToFoam
    elif [["$meshc" -eq 5]]; then
        fluentMeshToFoam
    elif [["$meshc" -eq 6]]; then
        gambitToFoam
    elif [["$meshc" -eq 7]]; then
        gmshToFoam
    elif [["$meshc" -eq 8]]; then
        ideasUnvToFoam
    elif [["$meshc" -eq 9]]; then
        kivaToFoam
    elif [["$meshc" -eq 10]]; then
        mshToFoam
    elif [["$meshc" -eq 11]]; then
        netgenNeutralToFoam    
    elif [["$meshc" -eq 12]]; then
        Optional/ccm26ToFoam
    elif [["$meshc" -eq 13]]; then
        plot3dToFoam
    elif [["$meshc" -eq 14]]; then
        sammToFoam
    elif [["$meshc" -eq 15]]; then
        star3ToFoam
    elif [["$meshc" -eq 16]]; then
        star4ToFoam
    elif [["$meshc" -eq 17]]; then
        tetgenToFoam
    elif [["$meshc" -eq 18]]; then
        vtkUnstructuredToFoam
    fi

}

select_mesh_option () {
    read -p"
    1. blockMesh
    2. snappyHexMesh
    Pick the one you wnat to use:" mesh

}

select_mesh () {
    select_mesh_option

    if [["$mesh" -eq 1]]; then
        blockMesh
    elif [["$mesh" -eq 2]]; then
        snappyHexMesh
    fi
}

select_basic_option () {
    read -p "
    1.chtMultiRegionFoam
    2.laplacianFoam
    3.overLaplacianDyMFoam
    4.overPotentialFoam
    5.potentialFoam
    6.scalarTransportFoam
    7.simpleFoam
    Please Select on of the basic libaries[1-7]:" basic
}

select_basic () {
    select_basic_option

    if [["$basic" -eq 1]]; then
        chtMultiRegionFoam
    elif [["$basic" -eq 2]]; then
        laplacianFoam
    elif [["$basic" -eq 3]]; then
        overLaplacianDyMFoam
    elif [["$basic" -eq 4]]; then
        overPotentialFoam
    elif [["$basic" -eq 5]]; then
        potentialFoam
    elif [["$basic" -eq 6]]; then
        scalarTransportFoam
    elif [["$basic" -eq 7]]; then
        simpleFoam
    fi
}

select_combustion_option (){
    read -p"
    1.chemFoam
    2.coldEngineFoam
    3.fireFoam
    4.PDRFoam
    5.reactingFoam
    6.rhoRactingFoam
    7.XiDyMFoam
    8.XiEngineFoam
    9.XiFoam
    Please Select from the combustion libaries[1-9]:" comb
}

select_combustion () {
    select_combustion_option

    if [["$comb" -eq 1]]; then
        chemFoam
    elif [["$comb" -eq 2]]; then
        coldEngineFoam
    elif [["$comb" -eq 3]]; then
        fireFoam
    elif [["$comb" -eq 4]]; then
        PDRFoam
    elif [["$comb" -eq 5]]; then
        reactingFoam
    elif [["$comb" -eq 6]]; then
        rhoRactingFoam
    elif [["$comb" -eq 7]]; then
        XiDyMFoam
    elif [["$comb" -eq 8]]; then
        XiEngineFoam
    elif [["$comb" -eq 9]]; then
        XiFoam
    fi

}

select_compressible_option () {
    read -p "
    1.acousticFoam
    2.overRhoPimpleDyMFoam
    3.overRhoSimpleFoam
    4.rhoCentralFoam
    5.rhoPimpleAdiabaticFoam
    6.rhoPimpleFoam
    7.rhoPorousSimpleFoam
    8.rhoSimpleFoam
    9.sonicDyMFoam
    10.sonicFoam
    11.sonicLiquidFoam
    Please Select from the compressible libaries[1-11]:" compress
}

select_compressible () {
    select_compressible_option

    if [["$compress" -eq 1]]; then
        acousticFoam
    elif [["$compress" -eq 2]]; then
        overRhoPimpleDyMFoam
    elif [["$compress" -eq 3]]; then
        overRhoSimpleFoam
    elif [["$compress" -eq 4]]; then
        rhoCentralFoam
    elif [["$compress" -eq 5]]; then
        rhoPimpleAdiabaticFoam
    elif [["$compress" -eq 6]]; then
        rhoPimpleFoam
    elif [["$compress" -eq 7]]; then
        rhoPorousSimpleFoam
    elif [["$compress" -eq 8]]; then
        rhoSimpleFoam
    elif [["$compress" -eq 9]]; then
        sonicDyMFoam
    elif [["$compress" -eq 10]]; then
        sonicFoam
    elif [["$compress" -eq 11]]; then
        sonicLiquidFoam
    fi

}

discrete_methods_options () {
    read -p"
    1.dsmcFoam
    2.molecularDynamics
    Please Select from the Discrete Methods Libaries[1-2]:"dm
}

select_discrete_methods () {
    discrete_methods_options
    if [["$dm" -eq 1]]; then
        dsmcFoam
    elif [["$dm" -eq 2]]; then
        molecularDynamics
    fi
}

select_dns () {
    dnsFoam
}

electromagnetics_option (){
    read -p"
    1.electrostaicFoam
    2.mhdFoam
    Please Select from the electromagnetics Libaries[1-2]:" em
}

select_electromagnetics () {
    electromagnetics_option

    if [["$em" -eq 1]]; then
        electrostaicFoam
    elif [["$em" -eq 2]]; then
        mhdFoam
    fi
}

select_financial () {
    financialFoam
}

finite_area_option () {
    read -p"
    1.liquidFilmFoam
    2.sphereSurfactantFoam
    3.sufactantFoam
    Please Select from the finite area Libaries[1-3]:" fa

}

select_finite_area () {
    finite_area_option
    if [["$fa" -eq 1]]; then
        liquidFilmFoam
    elif [["$fa" -eq 2]]; then
        sphereSurfactantFoam
    elif [["$fa" -eq 3]]; then
        sufactantFoam
    fi

}

Heat_Transfer_option () {
    read =p "
    1.buoyantBoussinesqPimpleFoam
    2.buoyantBoussinesqSimpleFoam
    3.buoyantPimpleSimpleFoam
    4.buoyantSimpleFoam
    5.chtMultiRegionFoam
    6.chtMultiRegionSimpleFoam
    7.chtMultiRegionTwoPhaseEulerFoam
    8.overBuoyantPimpleDyMFoam
    9.solidFoam
    Please select one of the Heat Transfer Libaries[1-9]:" ht
}

select_Heat_Transfer () {
    Heat_Transfer_option

    if [["$ht" -eq 1]]; then
        buoyantBoussinesqPimpleFoam
    elif [["$ht" -eq 2]]; then
        buoyantBoussinesqSimpleFoam
    elif [["$ht" -eq 3]]; then
        buoyantPimpleSimpleFoam
    elif [["$ht" -eq 4]]; then
        buoyantSimpleFoam
    elif [["$ht" -eq 5]]; then
        chtMultiRegionFoam
    elif [["$ht" -eq 6]]; then
        chtMultiRegionSimpleFoam
    elif [["$ht" -eq 7]]; then
        chtMultiRegionTwoPhaseEulerFoam
    elif [["$ht" -eq 8]]; then
        overBuoyantPimpleDyMFoam
    elif [["$ht" -eq 9]]; then
        solidFoam
    fi
}

Incompressible_option () {
    read -p "
    1.adjointOptimisationFoam
    2.adjointShapeOptimizationFoam
    3.boundaryFoam
    4.icoFoam
    5.lumpedPointMotion
    6.nonNewtonianlcoFoam
    7.overPimpleDyMFoam
    8.overSimpleFoam
    9.pimpleFoam
    10.pisoFoam
    11.porousSimpleFoam
    12.shallowWaterFoam
    13.simpleFoam
    14.SRFPimpleFoam
    15.SRFSimpleFoam
    Please select on of the Incompressible Libaries[1-15]:" Incompress
}

select_Incompressible () {
    Incompressible_option
    if [["$Incompress" -eq 1]]; then
        adjointOptimisationFoam
    elif [["$Incompress" -eq 2]]; then
        adjointShapeOptimizationFoam
    elif [["$Incompress" -eq 3]]; then
        boundaryFoam
    elif [["$Incompress" -eq 4]]; then
        icoFoam
    elif [["$Incompress" -eq 5]]; then
        lumpedPointMotion
    elif [["$Incompress" -eq 6]]; then
        nonNewtonianlcoFoam
    elif [["$Incompress" -eq 7]]; then
        overPimpleDyMFoam
    elif [["$Incompress" -eq 8]]; then
        overSimpleFoam
    elif [["$Incompress" -eq 9]]; then
        pimpleFoam
    elif [["$Incompress" -eq 10]]; then
        pisoFoam
    elif [["$Incompress" -eq 11]]; then
        porousSimpleFoam
    elif [["$Incompress" -eq 12]]; then
        shallowWaterFoam
    elif [["$Incompress" -eq 13]]; then
        simpleFoam
    elif [["$Incompress" -eq 14]]; then
        SRFPimpleFoam
    elif [["$Incompress" -eq 15]]; then
        SRFSimpleFoam
    fi
}

Lagrangian_option () {
    read -p "
    1.coalChemistryFoam
    2.DPMFoam
    3.icoUncoupledKinematicParcelDyMFoam
    4.icoUncoupledKinematicParcelFoam
    5.kinematicParcelFoam
    6.MPPICDyMFoam
    7.MIPPICFoam
    8.reactingHeterogenousParcelFoam
    9.reactingParcelFoam
    10.simpleReactingParcelFoam
    11.sprayFoam
    12.uncoupledKinematicParelDyMFoam
    Please Select and option from the Lagrangian Libary [1-12]:" lang
}

select_Lagrangian () {
    Lagrangian_option
    if [["$lang" -eq 1]]; then
        coalChemistryFoam
    elif [["$lang" -eq 2]]; then
        DPMFoam
    elif [["$lang" -eq 3]]; then
        icoUncoupledKinematicParcelDyMFoam
    elif [["$lang" -eq 4]]; then
        icoUncoupledKinematicParcelFoam
    elif [["$lang" -eq 5]]; then
        kinematicParcelFoam
    elif [["$lang" -eq 6]]; then
        MPPICDyMFoam
    elif [["$lang" -eq 7]]; then
        MIPPICFoam
    elif [["$lang" -eq 8]]; then
        reactingHeterogenousParcelFoam
    elif [["$lang" -eq 9]]; then
        reactingParcelFoam
    elif [["$lang" -eq 10]]; then
        simpleReactingParcelFoam
    elif [["$lang" -eq 11]]; then
        sprayFoam
    elif [["$lang" -eq 12]]; then
        uncoupledKinematicParelDyMFoam
    fi
}

Multiphase_option () {
    read -p"
    1.cavitatingFoam
    2.compressibleInterDyMFoam
    3.compressibleInterFoam
    4.compressibleInterIsoFoam
    5.compressibleMultiphaseInterFoam
    6.driftFluxFoam
    7.icoReactingMultiphaseInterFoam
    8.interCondensatingEvaporatingFoam
    9.interFoam
    10.interIsoFoam
    11.interMixingFoam
    12.interPhaseChangeDyMFoam
    13.interPhaseChangeFoam
    14.MPPICInterFoam
    15.multiphaseEulerFoam
    16.multiphaseInterFoam
    17.overCompressibleInterDyMFoam
    18.overInterDyMfoam
    19.overInterPHaseChangeDyMFoam
    20.potentialFreeSurfaceDyMFoam
    21.potentialFreeSurfaceFoam
    22.reactingMultiphaseEulerFoam
    23.reactingTwoPhaseEulerFoam
    24.twoLiquidMixingFoam
    25.twoPhaseEulerFoam" multi
}

select_Multiphase () {
    Multiphase_option
    if [["$multi" -eq 1]]; then
        cavitatingFoam
    elif [["$multi" -eq 2]]; then
        compressibleInterDyMFoam
    elif [["$multi" -eq 3]]; then
        compressibleInterFoam
    elif [["$multi" -eq 4]]; then
        compressibleInterIsoFoam
    elif [["$multi" -eq 5]]; then
        compressibleMultiphaseInterFoam
    elif [["$multi" -eq 6]]; then
        driftFluxFoam
    elif [["$multi" -eq 7]]; then
        icoReactingMultiphaseInterFoam
    elif [["$multi" -eq 8]]; then
        interCondensatingEvaporatingFoam
    elif [["$multi" -eq 9]]; then
        interFoam
    elif [["$multi" -eq 10]]; then
        interIsoFoam
    elif [["$multi" -eq 11]]; then
        interMixingFoam
    elif [["$multi" -eq 12]]; then
        interPhaseChangeDyMFoam
    elif [["$multi" -eq 13]]; then
        interPhaseChangeFoam
    elif [["$multi" -eq 14]]; then
        MPPICInterFoam
    elif [["$multi" -eq 15]]; then
        multiphaseEulerFoam
    elif [["$multi" -eq 16]]; then
        multiphaseInterFoam
    elif [["$multi" -eq 17]]; then
        overCompressibleInterDyMFoam
    elif [["$multi" -eq 18]]; then
        overInterDyMfoam
    elif [["$multi" -eq 19]]; then
        overInterPhaseChangeDyMFoam
    elif [["$multi" -eq 20]]; then
        potentialFreeSurfaceDyMFoam
    elif [["$multi" -eq 21]]; then
        potentialFreeSurfaceFoam
    elif [["$multi" -eq 22]]; then
        reactingMultiphaseEulerFoam
    elif [["$multi" -eq 23]]; then
        reactingTwoPhaseEulerFoam
    elif [["$multi" -eq 24]]; then
        twoLiquidMixingFoam
    elif [["$multi" -eq 25]]; then
        twoPhaseEulerFoam
    fi

}

Stress_Analysis_option () {
    read -p "
    1.solidDisplacementFoam
    2.solidEquilibriumDisplacementFoam
    Please select a Stress Analysis Libary[1-2]:" stress
}

select_StressAnalysis () {
    Stress_Analysis_option
    if [["$stress" -eq 1]]; then
        solidDisplacementFoam
    elif [["$stress" -eq 2]]; then
        solidEquilibriumDisplacementFoam
    fi
}

select_lib_openFoam_option () {
    read -p "
    Please Select the type of CFD you are running
    1.Basic
    2.Compustion
    3.Compressible
    4.Discrete Methods
    5.DNS
    6.Electromagnetics
    7.Financial
    8.Finite Area
    9.Heat Transfer
    10.Incompressible
    11.Lagrangian
    12.Multi-Phase
    13.Stress Analysis
    Enter a number[1-13]:" lib
}

select_lib_openFoam () {
    select_lib_openFoam_option

    if [["$lib" -eq 1]]; then
        select_basic
    elif [["$lib" -eq 2]]; then
        select_combustion
    elif [["$lib" -eq 3]]; then
        select_compressible
    elif [["$lib" -eq 4]]; then
        select_discrete_methods
    elif [["$lib" -eq 5]]; then
        select_dns
    elif [["$lib" -eq 6]]; then
        select_electromagnetics
    elif [["$lib" -eq 7]]; then
        select_financial
    elif [["$lib" -eq 8]]; then
        select_finite_area
    elif [["$lib" -eq 9]]; then
        select_Heat_Transfer
    elif [["$lib" -eq 10]]; then
        select_Incompressible
    elif [["$lib" -eq 11]]; then
        select_Lagrangian
    elif [["$lib" -eq 12]]; then
        select_Multiphase
    elif [["$lib" -eq 13]]; then
        select_StressAnalysis
    fi

}

openfoam2306

mesh_conversion

select_mesh

select_lib_openFoam
