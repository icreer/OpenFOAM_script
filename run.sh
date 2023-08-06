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
    if [["$mesh" -eq 1]]; then
        blockMesh
    elif [["$mesh" -eq 2]]; then
        snappyHexMesh
    fi
}

openfoam2306

mesh_conversion_option

mesh_conversion

select_mesh_option

select_mesh


