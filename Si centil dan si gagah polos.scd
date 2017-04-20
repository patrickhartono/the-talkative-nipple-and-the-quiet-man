// Si Centil Cerewet dan Si Gagah Pendiam //
// The talkative nipple and the quiet man //



// Move mouse to alternate speed //
(
SynthDef.new(\sicentilcerewetdansigagahpendiam, {
	var freq1, freq2, freq3, freq4, width1, width2, amp1, amp2, amp3, amp4, sig1, sig2, sig3, sig4;
	freq1 = LFNoise1.kr(8).exprange(500,5000);
	freq2 = LFNoise1.kr(8).exprange(500,5000);
	freq3 = LFNoise0.kr(2).exprange(25,100);
	freq4 = LFNoise0.kr(2).exprange(25,100);
	freq1 = freq1 * LFPulse.kr(8,add:1);
	freq2 = freq2 * LFPulse.kr(6,add:1);
	freq3 = freq3 * LFPulse.kr(2,add:1);
	freq4 = freq4 * LFPulse.kr(4,add:1);
	width1 = MouseY.kr(0.1,0.5);
	width2 = MouseY.kr(0.5,0.1);
	amp1 = LFPulse.kr(MouseX.kr(0,4),0,width1,0.5);
	amp2 = LFPulse.kr(MouseX.kr(4,0),0,width2,0.5);
	amp3 = LFPulse.kr(MouseX.kr(0,2),0,width1,0.5);
	amp4 = LFPulse.kr(MouseX.kr(2,0),0,width2,0.5);
	sig1 = Pulse.ar(freq1,width1,amp1) *0.2;
	sig2 = Pulse.ar(freq2,width2,amp2)*0.2;
	sig3 = SinOsc.ar(freq3,0,amp3*1.5) + SinOsc.ar(freq3*2,0,amp3*0.5);
	sig4 = SinOsc.ar(freq4,0,amp4*1.5) + SinOsc.ar(freq4*2,0,amp4*0.5);
	sig1 = FreeVerb.ar(sig1, 0.1,0.5,0.9,0.5);
	sig2 = FreeVerb.ar(sig2, 0.1,0.5,0.9,0.5);
	sig3 = FreeVerb.ar(sig3, 0.1,0.5,0.9,0.5);
	sig4 = FreeVerb.ar(sig4, 0.1,0.5,0.9,0.5);
	Out.ar(0, sig1);
	Out.ar(1, sig2);
	Out.ar(0, sig3);
	Out.ar(1, sig4);
}).add;

x = Synth.new(\sicentilcerewetdansigagahpendiam);
)

x.free;



// by; Stevie J. Sutanto //
// www.steviejsutanto.com //