# Cloister
# Coded by Joey Reyes
temp = [96.0, 99.4, 98.8, 98.7, 98.6, 99.8, 99.4, 100.2, 98.7, 99.8, 99.7, 98.2, 97.5, 98.3, 97.7, 98.2, 99.1, 96.6, 98.0, 96.4, 96.8, 97.1];
sspo2 = [0.96, 0.98, 0.98, 0.98, 0.98, 0.98, 0.98, 0.95, 0.97, 0.97, 0.99, 0.97, 0.98, 0.97, 0.98, 0.99, 0.99, 0.98, 0.97, 0.98, 0.98, 0.98];
prbmp = [100, 103, 91, 87, 87, 97, 98, 93, 83, 86, 93, 98, 86, 84, 96, 90, 91, 84, 87, 87, 77, 86];
use_random_seed 39;

synths = [:organ_tonewheel, :fm, :subpulse, :dsaw, :growl, :sine, :tri, :dull_bell, :bass_foundation];

in_thread(name: :tone_1) do
  loop do
    use_synth synths[rand(9)].to_sym()
    play choose(temp)*0.7, amp: choose(sspo2), attack: choose(sspo2)+rrand(1, 3), attack_level: choose(sspo2), decay: choose(sspo2), decay_level: choose(sspo2), sustain: choose(sspo2), sustain_level: choose(sspo2), release: choose(sspo2)+rrand(4, 6)
    sleep rrand(9,12)
  end
end

sleep rrand(1, 3)

in_thread(name: :tone_2) do
  loop do
    use_synth synths[rand(9)].to_sym()
    play choose(prbmp)/2, amp: choose(sspo2), attack: choose(sspo2)+rrand(1, 3), attack_level: choose(sspo2), decay: choose(sspo2), decay_level: choose(sspo2), sustain: choose(sspo2), sustain_level: choose(sspo2), release: choose(sspo2)+rrand(4, 6)
    sleep rrand(8, 12)
  end
end

sleep rrand(2, 5)

in_thread(name: :tone_3) do
  loop do
    use_synth synths[rand(9)].to_sym()
    play choose(prbmp)*0.3, amp: choose(sspo2)-0.3, attack: choose(sspo2)+rrand(1, 3), attack_level: choose(sspo2), decay: choose(sspo2), decay_level: choose(sspo2), sustain: choose(sspo2), sustain_level: choose(sspo2), release: choose(sspo2)+rrand(8, 15)
    sleep rrand(12, 18)
  end
end
