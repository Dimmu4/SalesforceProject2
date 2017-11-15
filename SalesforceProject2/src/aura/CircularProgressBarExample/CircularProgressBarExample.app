<aura:application >

<div class="slds-grid slds-p-top--xx-large">
				<b></b>

<div class="slds-col">
            <c:CircularProgressBar themeAfterThreshold="red" themeBeforeThreshold="red" size="medium" totalProgress="90" actualProgress="24" Legend="Result format Mix" resultFormat="Mix" threshold="10" />  
        </div>

<div class="slds-col">
            <c:CircularProgressBar themeAfterThreshold="blue" themeBeforeThreshold="red" size="medium" totalProgress="19" actualProgress="5" Legend="Threshold Second theme in Action" resultFormat="Mix" threshold="7" />  
        </div>
    </div>   
</aura:application>