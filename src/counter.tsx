import { useState } from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

export const Counter = () => {
  const [count, setCount] = useState(0);

  return (
    <View style={styles.container}>
      <Text style={styles.counter}>{count}</Text>
      <Button title="Increment" onPress={() => setCount(count + 1)} />
      {/* <Button title="Decrement" onPress={() => setCount(count - 1)} /> */}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  counter: {
    fontSize: 48,
  },
});
