-----------------------------------------------------------
--smashables for racing
-----------------------------------------------------------

function onStartup(self)
    self:SetVar("bIsDead", false)
end

function onCollisionPhantom(self, msg)
   
    if ( self:GetVar("bIsDead") == true ) then
        return
    end

    --print("I'm hit!")
   
    local target = msg.objectID
   
	if ( target:GetID() == GAMEOBJ:GetControlledID():GetID() ) then
	
		--print("sending hit message SEE FX")
		target:VehicleNotifyHitSmashable{objHit = self}
		target:PlayFXEffect{effectID = 4102, effectType = "onHit"}
      
    end   
end


function onDie(self, msg)

	--print("dead")

end