var queue : int = 3000; //3000 is default in Unity
var applyToChildren : boolean = false;

function Awake(){
    SetRenderQueue();
}
   
function SetRenderQueue(){
    if (!renderer || !renderer.sharedMaterial || applyToChildren){
        if(applyToChildren){
            for(var child : Transform in transform){
                child.renderer.sharedMaterial.renderQueue = queue;
            }
        } else { 
            print("No renderer found on this GameObject. Check the applyToChildren box to apply settings to children"); 
        }    
    } else {renderer.sharedMaterial.renderQueue = queue;}
}