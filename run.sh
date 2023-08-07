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

}

select_finite_area () {

}

select_Heat_Transfer () {

}

select_Incompressible () {

}

select_Lagrangian () {

}

select_Multiphase () {

}

select_StressAnalysis () {
    
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
